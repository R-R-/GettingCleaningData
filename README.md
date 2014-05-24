# Getting & Cleaning Data - Course Project

The script run_analysis.R clean the data

### 1. Merges the training and the test sets to create one data set.

- The training and testing dataset are first read into two variables, train and test, 
respectively
- The training & testing dataset are then merged using rbind

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

- First the list of features names are read into variable features
- Then the features with mean and standard deviation are found using regular expression
