# KNN-linear_regression-pig


Problems 1 and 2 are based on the dataset score.csv. Please fill out all missing values by the
corresponding column average before work on Problem 1 and Problem 2.

Problem 1: Find the 5 nearest neighbors (rows) to the row (seat is 54 and the midterm is 110) based on
hw, quiz, and final.

Problem 2: Find the estimates of multiple linear regression in which final as the dependent variable and
hw and quiz as the independent variables.

The formula for multiple linear regression is below.
Problems 3 is based on the dataset nyc_taxi_data_2014.csv.gz.
Problem 3:Find the 3 nearest neighbors (rows) to the first row based on midterm, att, and hw.

2.	K-Nearest Neighbor 
The K-Nearest Neighbors algorithm (KNN) is a non-parametric method that is used for classification and regression. In both cases, the input consists of the k closest training objects  in a data set. In KNN classification, an object is classified by a plurality vote of its neighbors, with the object being assigned to the class most common among its k nearest neighbors (k is a positive integer, typically small). In KNN regression, the output is the average of the values of the k nearest neighbors.

3.	Linear Regression
Linear regression is a linear approach for modelling the relationship between a scalar response and one or more explanatory variables (also known as dependent and independent variables). The case of one explanatory variable is called simple linear regression. For more than one explanatory variables, the process is called multiple linear regression.

Simple linear regression
![image](https://user-images.githubusercontent.com/46953829/175790102-5be0b914-cad5-4b39-a548-b69b0edad0ff.png)

 
Multiple linear regression with two independent variables. Suppose y is the response variable and x, z are two independent variables. The multiple linear regression is 

![image](https://user-images.githubusercontent.com/46953829/175790085-f7f77c04-4319-4c46-83e1-43295a2f4841.png)

Where the coefficients are given by the formulas
 
![image](https://user-images.githubusercontent.com/46953829/175790096-1a9cfb34-89c7-401c-b850-62b8dec7af41.png)

