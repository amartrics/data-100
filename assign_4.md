# Assignment 4: Acquiring, Modifying, and Describing Data

This assignment required me to download land coverage information concerning Brunei from WorldPop and combine it with my previously-existing raster and shapefile data to create a formal object of class RasterStack. I then used the stacked raster layers to create overlapping histograms that provided data on population and night-time lights in the country with corresponding density curves. (Note: Brunei's population is so small that I chose not to graph it as a logarithmic function.) 

### Histogram with Overlapping Density Curve (Population)
![density_pop_graph](https://user-images.githubusercontent.com/70035366/111082810-96a70100-84e0-11eb-8715-2cb5b70576dd.png)

### Histogram with Overlapping Density Curve (Night-Time Lights)
![density_ntl_graph](https://user-images.githubusercontent.com/70035366/111082814-99a1f180-84e0-11eb-8c8e-ba88adf37435.png)

Secondly, I used ggplot to create two linear regression models that respectively illustrate the correlations between Brunei's population and the layout of night-time lights and bodies of water within the country. These two independent variables both correlate with Brunei's population density, but in different ways, and with varying strength, as evidenced by the graphs. 

![pop_ntl_regression_fitted](https://user-images.githubusercontent.com/70035366/111084645-db836580-84e9-11eb-8740-0713afe0ad80.png)
![summary_fit_ntl](https://user-images.githubusercontent.com/70035366/111086503-c6f79b00-84f2-11eb-87cc-c4d3b3ed3bc0.png)

![pop_water_regression_fitted](https://user-images.githubusercontent.com/70035366/111084648-dc1bfc00-84e9-11eb-8254-6de18ee1468d.png)
![summary_fit_water](https://user-images.githubusercontent.com/70035366/111086557-150c9e80-84f3-11eb-97ff-0633280c3cca.png)
