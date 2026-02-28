url <- http://irr.org.za/media

url <- "http://irr.org.za/media/"download.file(url, destfile = here::here("mypage.html"))


library(rvest)
elements <- url %>%
  rvest::read_html(url) %>%
  rvest::html_elements(css = ".not-bold-header , .documentFirstHeading")  

titles <- elements %>%
  rvest::html_text()


url <-
  
  
getwd(scripts)
