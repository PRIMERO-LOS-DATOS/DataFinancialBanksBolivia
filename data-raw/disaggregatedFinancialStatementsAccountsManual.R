## code to prepare `disaggregatedFinancialStatementsAccountsManual` dataset goes here

library(gsheet)

id <- '1lj0MG-Q1WvS9_iC3kSzLgaSZlbG9-Dxop9sfWDZYICc'

disaggregatedFinancialStatementsAccountsManual <-
  gsheet::gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(disaggregatedFinancialStatementsAccountsManual,
     file = 'data/disaggregatedFinancialStatementsAccountsManual.rda')

usethis::use_data(disaggregatedFinancialStatementsAccountsManual, overwrite = TRUE)
