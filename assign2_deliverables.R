# tabula rasa
rm(list=ls(all=TRUE))

# installing units library
# install.packages("units", dependencies = TRUE)

# installing scales library
# install.packages("scales", dependencies = TRUE)

# install ggpubr library
# install.packages("ggpubr", dependencies = TRUE)

# loading libraries
library(tidyverse)
library(sf)
library(raster)
library(rgdal)
library(doParallel)
library(snow)
library(units)
library(scales)
library(ggpubr)

# set working directory
setwd("C:/users/abelr/Desktop/rstudio")

# load adm1 shapefile data 
load("brn_adm1_sf.RData")

# creating area and density columns
brn_adm1 <- brn_adm1 %>% 
  mutate(area = sf::st_area(brn_adm1) %>%
           units::set_units("km^2")) %>%
  mutate(density = area / pop_count)

# creating bar plot
brn_bar <- brn_adm1 %>% 
# ordering counties in accordance with population size
  mutate(NAME_1 = fct_reorder(NAME_1, pop_count)) %>%
  ggplot(aes(x = NAME_1, y = pop_count, fill = pop_count)) + 
  geom_bar(stat = "identity", color = "midnightblue", width = 0.5) + 
  coord_flip() + 
  xlab("population") + ylab("county") + 
  geom_text(aes(label = percent(pop_count / sum(pop_count))),
            position = position_stack(vjust = 0.5),
            color = "black", size = 2.0) + 
  scale_fill_gradient(low = "darkslategray3", high = "darkorchid3") + 
  ggtitle(label = "Percentage of Population per County (by %)")

# creating spatial plot
brn_spatial <- ggplot(brn_adm1) + 
  geom_sf(aes(fill = pop_count)) + 
  geom_sf_text(aes(label = NAME_1),
               color = "black", 
               size = 3) + 
  geom_sf_text(aes(label = round(pop_count, 2)),
           color = "black", size = 3,
           nudge_y = -0.04) +
  scale_fill_gradient(low = "darkslategray3", high = "darkorchid3") + 
  ggtitle(label = "Population Density by County (per km^2)")

# arranging plots
brunei <- ggarrange(brn_spatial, brn_bar, nrow = 1, widths = c(3,2.25))
brunei

annotate_figure(brunei, top = text_grob("Brunei", color = "black", face = "bold", size = 25))

ggsave("brunei.png", width = 20, heigh = 10, dpi = 200)