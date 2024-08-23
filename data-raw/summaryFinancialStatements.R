## code to prepare `summaryFinancialStatements` dataset goes here

library(gsheet)

id <- '1RJYSo4VmoxQSfZxXKhq6s8ZeBJClNBSxK0rnIj4dyWk'

summaryFinancialStatements <-
  gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(summaryFinancialStatements,
     file = 'data/summaryFinancialStatements.rda')

usethis::use_data(summaryFinancialStatements, overwrite = TRUE)
