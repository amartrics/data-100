# tabula rasa
rm(list=ls(all=TRUE))

# loading installed libraries
library(tidyverse)
library(sf)
library(raster)
library(rgdal)
library(doParallel)
library(snow)

# setting working directory
setwd("C:/users/abelr/Desktop/rstudio")

# importing .tif file
brn_pop20 <- raster("assign_2/worldpop_data/brn_ppp_2020.tif")

# importing shapefile for adm2 borders
brn_adm2 <- read_sf("assign_1/gadm_brn/gadm36_BRN_2.shp")

# plotting raster and shapefile data
plot(brn_pop20)
plot(st_geometry(brn_adm2), add = TRUE)

# parallel processing
# ncores <- detectCores() - 1
# beginCluster(ncores)
# pop_vals_adm2 <- raster::extract(brn_pop20, brn_adm2, df = TRUE)
# endCluster()
# save(pop_vals_adm2, file = "pop_vals_adm2.RData")

load("pop_vals_adm2.RData")

# calculating totals of each gridcell
totals_adm2 <- pop_vals_adm2 %>%
  group_by(ID) %>%
  summarize(pop_count = sum(brn_ppp_2020, na.rm = TRUE))

# adding pop_count to sf class object
brn_adm2 <- brn_adm2 %>%
  add_column(brn_pop20 = totals_adm2$pop_count)

# creating ggplot() with population heatmap
ggplot(brn_adm2) + 
  geom_sf(aes(fill = brn_pop20)) + 
  geom_sf_text(aes(label = NAME_2),
               color = "black", 
               size = 3) + 
  scale_fill_gradient(low = "darkslategray3", high = "darkorchid3")
