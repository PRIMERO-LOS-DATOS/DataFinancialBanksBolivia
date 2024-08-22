## code to prepare `disaggregatedFinancialStatements_100_Assets` dataset goes here

library(gsheet)

id <- '1otVD0De7frywOTaiYuAaH2M-u0jdGCN-G32rioWElLg'

disaggregatedFinancialStatements_100_Assets <-
  gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(disaggregatedFinancialStatements_100_Assets,
     file = 'data/disaggregatedFinancialStatements_100_Assets.rda')

usethis::use_data(disaggregatedFinancialStatements_100_Assets, overwrite = TRUE)
