## code to prepare `ticketsFinancialInstitutions` dataset goes here

library(gsheet)

id <- '1OCCmtDNhFej3J5AyjRCPzNDyj3i9WKeou9Z_I4i-hW0'

ticketsFinancialInstitutions <-
  gsheet::gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(ticketsFinancialInstitutions,
     file = 'data/ticketsFinancialInstitutions.rda')

usethis::use_data(ticketsFinancialInstitutions, overwrite = TRUE)
