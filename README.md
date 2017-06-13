The InsightR package contains wrapper functions for interacting with the
Insight API: <http://docs.api.wdtinc.com/insight-api/en/latest/>.

API authorization tokens may be obtained from here:
<http://wdtinc.com/skywise-home/insight-api/>

Basic Usage
-----------

    # before making any calls you will need to set your app_id and app_key
    > Authenticate("your_app_id", "your_app_key")

    # set up some variables to make calls with
    > lat <- 35
    > lon <- -97
    > start <- '2016-01-01'
    > end <- '2016-01-31'

    > gdd <- GrowingDegreeDays (lat, lon, start, end)  
    > gdd$response$status_code == 200
    [1] TRUE

    > summary(gdd$content$series[[3]])
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     0.0000  0.0000  0.0000  0.4581  0.0000  5.2000 
      
    # hourly precipitation is only available for a 10 day timespan
    > hp = HourlyPrecipitation(lat, lon, start, end)
    Warning message:
    In .call.api("hourly-precipitation", latitude, longitude, start,  :
      Unprocessable Entity (WebDAV; RFC 4918) (HTTP 422).

    > hp$response$status_code
    [1] 422

    > hp$content$message
    [1] "Your date/datetime query exceeded the maximum timespan of this resource."

    > hp = HourlyPrecipitation(lat, lon, "2017-01-01", "2017-01-10")
    > hp$response$status_code == 200
    [1] TRUE

    > summary(hp$content$series[[3]])
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    0.00000 0.00000 0.00000 0.02745 0.00000 3.58000 

    # Daily endpoints can be up to 1 year in length
    > cdd = CoolingDegreeDays(lat, lon, "2016-01-01", "2016-12-31")
    > summary(cdd$content$series[[3]])
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      0.000   0.000   2.600   4.813   9.600  15.800
