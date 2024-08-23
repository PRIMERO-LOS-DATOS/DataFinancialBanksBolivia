## code to prepare `indicatorsByFinancialInstitutions` dataset goes here

library(gsheet)

id <- '1jnJXxyYRWZAc2B7bq6bzC0kwZfyyuebYq6DEebpXHAQ'

indicatorsByFinancialInstitutions <-
  gsheet::gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(indicatorsByFinancialInstitutions,
     file = 'data/indicatorsByFinancialInstitutions.rda')

usethis::use_data(indicatorsByFinancialInstitutions, overwrite = TRUE)
