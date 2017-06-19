endpoints <- c(
  'growing-degree-days',
  'cooling-degree-days',
  'heating-degree-days',
  'daily-precipitation',
  'hourly-precipitation',
  'hourly-relative-humidity',
  'daily-solar-radiation',
  'hourly-solar-radiation',
  'hourly-temperature',
  'daily-high-temperature',
  'daily-low-temperature',
  'hourly-dewpoint',
  'hourly-wind-speed',
  'hourly-wind-direction',
  'daily-evapotranspiration-short-crop',
  'daily-evapotranspiration-tall-crop',
  'hourly-evapotranspiration-short-crop',
  'hourly-evapotranspiration-tall-crop',
  'climatology/daily-high-temperature',
  'climatology/daily-low-temperature',
d  'climatology/daily-precipitation'
)


fnTemplate <- "%s <-
  function(latitude,
           longitude,
           start = NULL,
           end = NULL,
           unit = NULL) {
    .call.api('%s',
              latitude,
              longitude,
              start,
              end,
              unit)
  }\n\n"



climoTemplate <- "%s <-
  function(latitude,
           longitude,
           start = NULL,
           end = NULL,
           unit = NULL,
           years = NULL) {
    .call.api('%s',
              latitude,
              longitude,
              start,
              end,
              unit,
              years)
  }\n\n"

ddTemplate <- "%s <-
  function(latitude,
           longitude,
           start = NULL,
           end = NULL,
           unit = NULL,
           base = NULL) {
    .call.api('%s',
              latitude,
              longitude,
              start,
              end,
              unit,
              base)
  }\n\n"

tests <- "
test_that('integration', {
  lat <- 35
  lon <- -97
  start <- '2017-01-01'
  end <- '2017-01-10'
"
write(tests, file="tests/testthat/test_insightr.R")
write("", file = "R/InsightR.R")
for (ep in endpoints) {
  parts = unlist(strsplit(ep, '-'))
  fnName <- NULL
  for (p in parts) {
    fnName <- paste0(fnName, toupper(substr(p, 1, 1)))
    fnName <- paste0(fnName, substring(p, 2))
  }

  # climo
  if (grepl('climatology', ep)) {
    climo = strsplit(fnName, '/')
    firstPart <- climo[[1]][1]
    secondPart <- climo[[1]][2]
    fnName <- paste0(firstPart, toupper(substr(secondPart, 1, 1)), substring(secondPart, 2))
    fn <- sprintf(climoTemplate, fnName, ep)

  } else if (grepl("degree-days", ep)) {
    fn <- sprintf(ddTemplate, fnName, ep)
  } else {
    fn <- sprintf(fnTemplate, fnName, ep)
  }


  write (paste(" ", fnName, "(lat, lon)"), file="tests/testthat/test_insightr.R", append=TRUE)
  write(fn, file = "R/InsightR.R", append = TRUE)
}

write("})", file="tests/testthat/test_insightr.R", append=TRUE)



