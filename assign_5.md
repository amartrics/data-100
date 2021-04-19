# Assignment 5: Modeling & Predicting Spatial Values and Investigating & Comparing Results

## Part 1: Modeling & Predicting Spatial Values

This project stipulated the creation and manipulation of several rasters in order to generate 3D and graduated maps of population density per gridcell in Brunei-Darussalam at two different scales, specifically in the first-level administrative subdivision of Brunei-Muara as well as the second-level urban subdivision of Gadong. The use of filters and cellStat functions was also employed to perform analyses of the collected data in comparison to actuals. The differentiation in the coloration of pixels represents the accuracy of plotted data. 

### Predicted Totals of Population-Per-Pixel (PPP) in First-Level Administrative Subdivision Brunei-Muara

![Screenshot (129)](https://user-images.githubusercontent.com/70035366/115154929-715f6280-a04b-11eb-8492-78916f31a539.png)

### Predicted Totals of Population-Per-Pixel (PPP) in Second-Level Administrative Subdivision Gadong

![Screenshot (128)](https://user-images.githubusercontent.com/70035366/115130481-264b3e00-9fbe-11eb-948b-5964ebe818d9.png)

## Part 2: Investigating and Comparing Results

In the second part of this assignment, I created three sets of spatial plots that describe the predicted population of Brunei-Darussalam using publicly available covariates and different mathematic operations. The models used to produce these plots are based on the predicted sum, mean, and log of Brunei-Darussalam's population-per-pixel at the secondary administrative level. 

### Plot Set 1: Population Totals Based on Summed Covariate Predictors 

The plots below were produced by a formula that relies on summed covariates to generate population count as a response variable. 

#### Plot 1a: Predicted Population 

This plot describes the predicted population of Brunei-Darussalam using a linear model based on summed covariates. 

![population_sums_plot](https://user-images.githubusercontent.com/70035366/115166333-a508af80-a080-11eb-85ee-6da1180e62ac.png)

#### Plot 1b: Plotted Difference 

This plot visually describes the differences between population count per gridcell actuals and the prediction of a linear model based on summed covariates. 

![diff_sums_plot](https://user-images.githubusercontent.com/70035366/115166366-c8cbf580-a080-11eb-8ab6-77319c14034b.png)

#### Plot 1c: 3D Visualization

This plot visualizes the population count predicted by summed covariates in three dimensions. 

![Screenshot (130)](https://user-images.githubusercontent.com/70035366/115166500-8ce56000-a081-11eb-951a-eeec5df24129.png)

### Plot Set 2: Population Totals Based on Averaged Covariate Predictors

The plots below were produced by a formula that relies on averaged covariates to generate population count as a response variable. 

#### Plot 2a: Predicted Population

This plot describes the predicted population of Brunei-Darussalam using a linear model based on averaged covariates. 

![population_means](https://user-images.githubusercontent.com/70035366/115166637-2f9dde80-a082-11eb-916d-95a1d9fa8d40.png)

#### Plot 2b: Plotted Difference

This plot visually describes the differences between population count per gridcell actuals and the prediction of a linear model based on averaged covariates. 

![diff_means_plot](https://user-images.githubusercontent.com/70035366/115166695-83102c80-a082-11eb-9c50-9761ed6150ae.png)

#### Plot 2c: 3D Visualization

This plot visualizes the population count predicted by averaged covariates in three dimensions. 

![Screenshot (131)](https://user-images.githubusercontent.com/70035366/115166767-ccf91280-a082-11eb-869f-51c335f20ccd.png)

### Plot Set 3: Logarithm of Population Based on Averaged Covariate Predictors

The plots below were produced by a formula that relies on averaged covariates to generate a logarithm of a population count as a response variable. 

#### Plot 3a: Predicted Population 

This plot describes a logarithm of the predicted population of Brunei-Darussalam using a linear model based on averaged covariates. 

![population_logpop_plot](https://user-images.githubusercontent.com/70035366/115166837-29f4c880-a083-11eb-8945-77591c59758d.png)

#### Plot 3b: Plotted Difference

This plot visually describes the differences between population count per gridcell actuals and the logarithmic prediction of a linear model based on averaged covariates. 

![diff_logpop_plot](https://user-images.githubusercontent.com/70035366/115166850-3d079880-a083-11eb-8431-e4ebfa717ecf.png)

#### Plot 3c: 3D Visualization 

This plot visualizes a logarithm of the population count predicted by averaged covariates in three dimensions. 

![Screenshot (132)](https://user-images.githubusercontent.com/70035366/115166911-6fb19100-a083-11eb-82c6-22a3d4d42dd4.png)
