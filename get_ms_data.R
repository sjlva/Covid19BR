.get_ms_url <- function() {
  url <- "https://xx9p7hp1p7.execute-api.us-east-1.amazonaws.com/prod/PortalGeral"
  api_id <- "unAFkcaNDeXajurGB7LChj8SgQYS2ptm"
  header <- httr::add_headers("X-Parse-Application-Id" = api_id)
  response <- httr::GET(url, header, httr::accept_json())
  url <- jsonlite::fromJSON(httr::content(response, "text", encoding="UTF-8"))[["results"]][["arquivo"]][["url"]]
  
  return(url)
}

.download_ms_panel_data <- function() {
  url <- .get_ms_url()
  download.file(url, "covid_ms.xlsx", mode = "wb")
}

.xlsx2rds <- function(dir, name = "covid_ms") {
  df <- openxlsx::read.xlsx(dir, 1, detectDates = TRUE)
  saveRDS(df, paste0("rds/", name, ".rds"))
  file.remove(dir)
}

.get_ms_panel_data <- function() {
  .download_ms_panel_data()
  .xlsx2rds("covid_ms.xlsx", "covid_ms")
  df <- readRDS("rds/covid_ms.rds")
  write.csv(df, "csv/covid_ms.csv", row.names = FALSE)
  zip("csv/covid_ms.zip", "csv/covid_ms.csv")
  file.remove("csv/covid_ms.csv")
}


.get_ms_panel_data()


