
GrowingDegreeDays <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           base = NULL) {
    .call.api('growing-degree-days',
              latitude,
              longitude,
              start,
              end,
              unit,
              base)
  }


CoolingDegreeDays <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           base = NULL) {
    .call.api('cooling-degree-days',
              latitude,
              longitude,
              start,
              end,
              unit,
              base)
  }


HeatingDegreeDays <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           base = NULL) {
    .call.api('heating-degree-days',
              latitude,
              longitude,
              start,
              end,
              unit,
              base)
  }


DailyPrecipitation <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-precipitation',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyPrecipitation <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-precipitation',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyRelativeHumidity <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-relative-humidity',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


DailySolarRadiation <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-solar-radiation',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlySolarRadiation <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-solar-radiation',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyTemperature <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-temperature',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


DailyHighTemperature <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-high-temperature',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


DailyLowTemperature <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-low-temperature',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyDewpoint <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-dewpoint',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyWindSpeed <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-wind-speed',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyWindDirection <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-wind-direction',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


DailyEvapotranspirationShortCrop <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-evapotranspiration-short-crop',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


DailyEvapotranspirationTallCrop <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('daily-evapotranspiration-tall-crop',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyEvapotranspirationShortCrop <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-evapotranspiration-short-crop',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


HourlyEvapotranspirationTallCrop <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL) {
    .call.api('hourly-evapotranspiration-tall-crop',
              latitude,
              longitude,
              start,
              end,
              unit)
  }


ClimatologyDailyHighTemperature <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           years = NULL) {
    .call.api('climatology/daily-high-temperature',
              latitude,
              longitude,
              start,
              end,
              unit,
              years)
  }


ClimatologyDailyLowTemperature <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           years = NULL) {
    .call.api('climatology/daily-low-temperature',
              latitude,
              longitude,
              start,
              end,
              unit,
              years)
  }


ClimatologyDailyPrecipitation <-
  function(latitude,
           longitude,
           start,
           end,
           unit = NULL,
           years = NULL) {
    .call.api('climatology/daily-precipitation',
              latitude,
              longitude,
              start,
              end,
              unit,
              years)
  }


