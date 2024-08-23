## code to prepare `loanPortfolioPlacementsByTypeOfEconomicActivityDebtor` dataset goes here

library(gsheet)

id <- '1CtvU2DdxAff3XvPDSMKzPiGrgTsXP3Ive1Mc3lKtL5Y'

loanPortfolioPlacementsByTypeOfEconomicActivityDebtor <-
  gsheet::gsheet2tbl( paste0('docs.google.com/spreadsheets/d/', id) )

save(loanPortfolioPlacementsByTypeOfEconomicActivityDebtor,
     file = 'data/loanPortfolioPlacementsByTypeOfEconomicActivityDebtor.rda')

usethis::use_data(loanPortfolioPlacementsByTypeOfEconomicActivityDebtor, overwrite = TRUE)
