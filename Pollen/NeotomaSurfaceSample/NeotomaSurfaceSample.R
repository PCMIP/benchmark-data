####################################################################
##### The R code is to download Neotoma surface pollen samples
##### PCMIP group in Calgary, Canada, Feb 2018
####################################################################


library(neotoma)

surface <- get_dataset(datasettype = 'pollen surface sample')
SurfacePollenNeotoma <- get_download(surface)
SurfacePollenNeotoma_export <- compile_downloads(SurfacePollenNeotoma)

saveRDS(SurfacePollenNeotoma,file = "NeotomaSurfacePollen.rds")
write.csv(SurfacePollenNeotoma_export,"SurfacePollenNeotoma.csv",row.names = FALSE)

