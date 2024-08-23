## code to prepare `loanPortfolioPlacementsByTypeOfLoanDestination` dataset goes here

library(gsheet)

id <- '1_Kks5qnqqp4xezQj1MqZl7BQ1TMYlstKx3K6t9G6_3E'

loanPortfolioPlacementsByTypeOfLoanDestination <-
  gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(loanPortfolioPlacementsByTypeOfLoanDestination,
     file = 'data/loanPortfolioPlacementsByTypeOfLoanDestination.rda')

usethis::use_data(loanPortfolioPlacementsByTypeOfLoanDestination, overwrite = TRUE)
