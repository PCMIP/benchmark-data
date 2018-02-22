library(dplyr)
library(reshape2)

pollen <- readr::read_csv('Pollen/Whitmore/Raw/PollenData.csv')
transition <- readr::read_csv('Pollen/Whitmore/Raw/TaxonConversion.csv')

geog <- pollen %>% select(ID2, LONDD, LATDD, ELEVATION)

metadata <- pollen %>% select(ID2, DepEnv, DataForm, YrOfSamp)

pollen_out <- pollen %>% 
  select(ID2, unique(transition$Original)) %>% 
  melt()

pollen_out$clean <- transition$Modified[match(pollen_out$variable, transition$Original)]
# NOTE: RC is really the only one we need.

pollen_clean <- dcast(pollen_out, 
                      ID2 ~ clean, 
                      value.var = 'value',
                      fun.aggregate = sum)

assertthat::are_equal(nrow(pollen_clean),
                      nrow(metadata),
                      nrow(geog))

whitmore_object <- list(pollen = pollen_clean,
                        metadata = metadata,
                        geog = geog)

saveRDS(whitmore_object, 'Pollen/Whitmore/whitmore_pollen.rds')
