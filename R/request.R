
Authenticate <- function(app.id, app.key) {
  Sys.setenv("SKYWISE_INSIGHT_APP_ID" = app.id)
  Sys.setenv("SKYWISE_INSIGHT_APP_KEY" = app.key)
}

.call.api <- function(endpoint,
                      latitude,
                      longitude,
                      start,
                      end,
                      unit = NULL,
                      base = NULL) {
  app.id = Sys.getenv("SKYWISE_INSIGHT_APP_ID")
  app.key = Sys.getenv("SKYWISE_INSIGHT_APP_KEY")

  url = paste ("https://insight.api.wdtinc.com",
               endpoint,
               latitude,
               longitude,
               sep = "/")

  query = list()

  if (!missing(start)) {
    query$start = start
  }

  if (!missing(end)) {
    query$end = end
  }

  if (!missing(base)) {
    query$base = base
  }

  if (!missing(unit)) {
    query$unit = unit
  }

  response <- GET(
    url = url,
    authenticate(app.id, app.key, type = "basic"),
    add_headers(Accept = "application/vnd.wdt+json; version=1"),
    query = query
  )

  warn_for_status(response)

  content = fromJSON(content(response, "text", encoding = 'UTF-8'))

  structure (list(content = content,
                  response = response))
}
