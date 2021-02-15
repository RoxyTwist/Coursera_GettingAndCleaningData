# Coursera_GettingAndCleaningData
#### This repository was built for the final assignment of the "Getting and Cleaning the Data" course.

## Repository Information
#### This repository contains 3 main files:
- run_analysis.R - This script is used to build up and perform the analysis on the required sample data.
- tidy.txt - This is the final output from the run_analysis.R script. It contains a tidy version of the sample data.
- CodeBook.md - Contains the definitions of each of the columns in the tidy.txt file.

## Project Goal
#### The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Project Description
The data for the run_analysis.R script are availabe at the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

An accurate description of the original data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following steps are performed to the data by running the run_analysis.R script:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
