
test_that('integration', {
  lat <- 35
  lon <- -97
  start <- '2017-01-01'
  end <- '2017-01-10'

  GrowingDegreeDays (lat, lon)
  CoolingDegreeDays (lat, lon)
  HeatingDegreeDays (lat, lon)
  DailyPrecipitation (lat, lon)
  HourlyPrecipitation (lat, lon)
  HourlyRelativeHumidity (lat, lon)
  DailySolarRadiation (lat, lon)
  HourlySolarRadiation (lat, lon)
  HourlyTemperature (lat, lon)
  DailyHighTemperature (lat, lon)
  DailyLowTemperature (lat, lon)
  HourlyDewpoint (lat, lon)
  HourlyWindSpeed (lat, lon)
  HourlyWindDirection (lat, lon)
  DailyEvapotranspirationShortCrop (lat, lon)
  DailyEvapotranspirationTallCrop (lat, lon)
  HourlyEvapotranspirationShortCrop (lat, lon)
  HourlyEvapotranspirationTallCrop (lat, lon)
  ClimatologyDailyHighTemperature (lat, lon)
  ClimatologyDailyLowTemperature (lat, lon)
  ClimatologyDailyPrecipitation (lat, lon)
})
