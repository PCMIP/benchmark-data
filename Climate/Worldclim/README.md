# Worldclim climate data extraction script

This folder contains a script to extract climate values from the Worldclim database. It requires the **raster** package.

The function has different parameters:
- **xy**: A two-columns dataframe containing the coordinates of the sites (longitude , latitude).
- **table**: The type of variable that beeds to be extracted ("tmean", "tmin", "tmax", "prec", "bio", "alt").
- **variable**: The list of variables to extract from the selected *table* (1 to 12 for the monthly values, 1 to 19 for the bioclimatic variables (see below)).
- **resolution**: Selection the resolution of the worlclim data. Values must be either 10, 5, 2.5 or 0.5.

## List of bioclimatic variables

1. = Annual Mean Temperature
2. = Mean Diurnal Range (Mean of monthly (max temp - min temp))
3. = Isothermality (BIO2/BIO7) (\* 100)
4. = Temperature Seasonality (standard deviation \*100)
5. = Max Temperature of Warmest Month
6. = Min Temperature of Coldest Month
7. = Temperature Annual Range (BIO5-BIO6)
8. = Mean Temperature of Wettest Quarter
9. = Mean Temperature of Driest Quarter
10. = Mean Temperature of Warmest Quarter
11. = Mean Temperature of Coldest Quarter
12. = Annual Precipitation
13. = Precipitation of Wettest Month
14. = Precipitation of Driest Month
15. = Precipitation Seasonality (Coefficient of Variation)
16. = Precipitation of Wettest Quarter
17. = Precipitation of Driest Quarter
18. = Precipitation of Warmest Quarter
19. = Precipitation of Coldest Quarter

## Example:

```whitmoreSS=readRDS("/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_pollen.rds")
wc10=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 10)[,3])
wc5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 5)[,3])
wc2.5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 2.5)[,3])
wc0.5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 0.5)[,3])

colnames(wc10)=colnames(wc5)=colnames(wc2.5)=colnames(wc0.5)=c('ID2','LONDD','LATDD','ELEVATION','Tann')
write.csv(wc10, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_10min.csv", row.names=FALSE)
write.csv(wc5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_5min.csv", row.names=FALSE)
write.csv(wc2.5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_2.5min.csv", row.names=FALSE)
write.csv(wc0.5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_0.5min.csv", row.names=FALSE)
