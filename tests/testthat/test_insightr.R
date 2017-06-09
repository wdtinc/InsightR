
test_that('integration', {
  lat <- 35
  lon <- -97
  start <- '2016-01-01'
  end <- '2016-01-31'

  GrowingDegreeDays (lat, lon, start, end)
  CoolingDegreeDays (lat, lon, start, end)
  HeatingDegreeDays (lat, lon, start, end)
  DailyPrecipitation (lat, lon, start, end)
  HourlyPrecipitation (lat, lon, start, end)
  HourlyRelativeHumidity (lat, lon, start, end)
  DailySolarRadiation (lat, lon, start, end)
  HourlySolarRadiation (lat, lon, start, end)
  HourlyTemperature (lat, lon, start, end)
  DailyHighTemperature (lat, lon, start, end)
  DailyLowTemperature (lat, lon, start, end)
  HourlyDewpoint (lat, lon, start, end)
  HourlyWindSpeed (lat, lon, start, end)
  HourlyWindDirection (lat, lon, start, end)
  DailyEvapotranspirationShortCrop (lat, lon, start, end)
  DailyEvapotranspirationTallCrop (lat, lon, start, end)
  HourlyEvapotranspirationShortCrop (lat, lon, start, end)
  HourlyEvapotranspirationTallCrop (lat, lon, start, end)
  ClimatologyDailyHighTemperature (lat, lon, start, end)
  ClimatologyDailyLowTemperature (lat, lon, start, end)
  ClimatologyDailyPrecipitation (lat, lon, start, end)
})
