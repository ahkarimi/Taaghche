get_qoutes <- function(id) {
  size <- 1
  json_url <- paste0("https://quote.taaghche.com/v1/quotes?bookId=", id, "&lastId=00&size=", size)
  qoutes <- jsonlite::fromJSON(json_url, simplifyDataFrame = TRUE)
  size <- qoutes$count
  json_url <- paste0("https://quote.taaghche.com/v1/quotes?bookId=", id, "&lastId=00&size=", size)
  qoutes <- jsonlite::fromJSON(json_url, simplifyDataFrame = TRUE)
  all_qoutes <- qoutes$quotes$data$chapterIndex
  return(all_qoutes)
}
