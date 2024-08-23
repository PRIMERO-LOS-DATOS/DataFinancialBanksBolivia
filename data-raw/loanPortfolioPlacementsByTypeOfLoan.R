## code to prepare `loanPortfolioPlacementsByTypeOfLoan` dataset goes here

library(gsheet)

id <- '1mfA4K0aUWRpQySa-_BYfYHI5Ln3H-vbPtPKaIToTlqA'

loanPortfolioPlacementsByTypeOfLoan <-
  gsheet::gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(loanPortfolioPlacementsByTypeOfLoan,
     file = 'data/loanPortfolioPlacementsByTypeOfLoan.rda')

usethis::use_data(loanPortfolioPlacementsByTypeOfLoan, overwrite = TRUE)
