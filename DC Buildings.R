# Oleksiy Anokhin
# October 26, 2018

# Exploring buildings data

# Install packages
library(tidyverse)
library(leaflet)
library(geojsonio)
library(rgdal)
library(sf)

# Set wd

# Read the file
dc_buildings <- st_read("DistrictofColumbia.geojson", quiet = TRUE)

dc_buildings <- st_simplify(dc_buildings)

# Build a map
dc_map <- leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addPolygons(data = dc_buildings, color = "black", opacity = 1)
dc_map


