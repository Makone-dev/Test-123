library(rvest) 

url <- "https://www.scrapethissite.com/"

url <- "https://www.scrapethissite.com/pages/simple/"
  
webpage <- read_html(url)

web_data <- webpage %>% 
  html_node(".country") %>% 
  html_text(trim = TRUE)

results <- data.frame(
  Country = character()
  Capital = character(),
  Population = character().
  Area = numeric()
  
for (country in web_data) {
  country_name <- country %>% 
    html_node("country-name") %>% 
    html_text(trim = TRUE) %>% 
  
  capital_name <- country %>% 
    html_node(".country-capital") %>% 
    html_text(trim = TRUE)
  
  population_data <-  country %>% 
    html_node(".country-population") %>% 
    html_text(trim = TRUE) %>% 
    as.numeric()
  
  area_data <- country %>% 
    html_node(".country-area") %>% 
    html_text(trum = TRUE) %>% 
    as.numeric()
  
  results <- rbind(results, data.frame(
    Country = country_name,
    Capital = capital_name,
    Population = population_data,
    Area = area_data
))
}

print(results)

write.csv(results, "scraped_ countries_data_csv", row.names = FALSE)
