# getting-cleaning-data-r
Getting and Cleaning Data Course Project

This is the course project submission for the Getting and Cleaning Data in R on Cousera.
The assignment calls for the student to prepare a tidy data set.
The data is accelerometer and gyroscope data from a Samsung Galaxy S smartphone
measured from 30 participants as they perform 6 activites: walking, walking upstairs,
walking downstairs, sitting, standing, and laying. 

The repository contains 4 files:
1. 'README.md'
2. 'codebook.md' : list and describes the variables in the submitted data file
3. 'run\_analysis.R' : the code that tidied the raw data
4. 'tidydata.txt' : the tidied data, the output of run\_analysis.R

-------------
Description of run\_analysis.R
-------------
The original data is fragmented across several files so the code begins by importing them all.
The data was separated by the researchers into training and testing data. The code combines 
them back together via a row concatenation as the data is formatted the same. 

The prompt requests that the variables that are mean and standard deviations of measurements
be kept. The variable names are stored in a separate file, features.txt, so the code searches through that 
imported file to find the requested variables. The criteria used to determine if it was a 
mean or standard deviation was if the variable name had "mean()" or "std()" in it to indicate
a function was being performed. 

Next the code uses descriptive activity names to name the activities in the data set.
The activities are stored in separate files, y\_train.txt and y\_test.txt, and the
dictionary of their values is in activity\_labels.txt. The training and testing sets
are combined and matching function is used to match the encoding with the activity names. 
The result is attached to the measurement data set.

The code then renames the columns of the measurement data set to descriptive variable names.
The variable names as indicated by the researchers are in features.txt and those names are used
to relabel the measurement data set. 

The code then calculates the average of each variable for each subject for each activity.
To do so, it column concatenates into the measurement data set the subject id numbers.
The subject ids are separated into training and test data and are row concatenated before 
concatenating with the measurement data set. Using dplyr, the code groups the data by
subject and activity and calculates mean. 


