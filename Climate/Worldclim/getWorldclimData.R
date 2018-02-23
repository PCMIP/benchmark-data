if(!require("raster")){
    install.packages("raster")
}

library(raster)


extractWorldclim=function(xy, table='bio', variable='bio1', resolution=10){
  colnames(xy)=c("lon", "lat")
  xy=as.data.frame.matrix(xy)
  coordinates(xy) = ~lon+lat
  if(resolution == 0.5){ ## If resolution=0.5,
    xmin=extent(xy)[1]%/%30*30  ;  xmax=(extent(xy)[2]%/%30+1)*30
    ymin=extent(xy)[3]%/%30*30  ;  ymax=(extent(xy)[4]%/%30+1)*30
    xx=seq(xmin+15, xmax, 30)
    yy=seq(ymin+15, ymax, 30)

    climatology <- getData("worldclim",var=table,res=resolution, lon=xmin, lat=ymin)[[variable]]
    for(x in xx){
      for(y in yy){
        if(x != xx[1] | y != yy[1]){
          climatology = merge(climatology, getData("worldclim",var=table,res=resolution, lon=x, lat=y)[[variable]])
        }
      }
    }
  }else{
    climatology <- getData("worldclim",var=table,res=resolution)[[variable]]
  }
  return(cbind.data.frame(coordinates(xy), extract(climatology, xy)))
}


#xy=data.frame(matrix(c(-75.25, -75.016667, -75.066667, -75.7, -74.933333, -75.95, -82.33, -97.516944, 55.091667, 55.833333, 55.413333, 55.066667, 55.25, 55.116667, 30.83, 29.6),ncol=2,byrow=FALSE))

#extractWorldclim(xy,"bio", c("bio1", "bio12"), 10)
#extractWorldclim(xy,"bio", c(1,12), 0.5)

whitmoreSS=readRDS("/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_pollen.rds")

wc10=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 10)[,3])
wc5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 5)[,3])
wc2.5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 2.5)[,3])
wc0.5=cbind(whitmoreSS$geog,extractWorldclim(whitmoreSS$geog[,c('LONDD','LATDD')],"bio", c(1), 0.5)[,3])

colnames(wc10)=colnames(wc5)=colnames(wc2.5)=colnames(wc0.5)=c('ID2','LONDD','LATDD','ELEVATION','Tann')
write.csv(wc10, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_10min.csv", row.names=FALSE)
write.csv(wc5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_5min.csv", row.names=FALSE)
write.csv(wc2.5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_2.5min.csv", row.names=FALSE)
write.csv(wc0.5, file="/Users/mchevali1/GitHub/PCMIP/benchmark-data/Pollen/Whitmore/whitmore_worldclim_0.5min.csv", row.names=FALSE)
