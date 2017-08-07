# Getting and Cleaning Data in R: Course Project
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#         average of each variable for each activity and each subject.

library(dplyr)

#download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
#              'temp.zip')
#unzip('temp.zip')
# import all files
xtrain<-read.table('UCI HAR Dataset/train/X_train.txt')
xtest<-read.table('UCI HAR Dataset/test/X_test.txt')
ytrain<-read.table('UCI HAR Dataset/train/y_train.txt')
ytest<-read.table('UCI HAR Dataset/test/y_test.txt')
subjecttrain<-read.table('UCI HAR Dataset/train/subject_train.txt')
subjecttest<-read.table('UCI HAR Dataset/test/subject_test.txt')
features<-read.table('UCI HAR Dataset/features.txt')
activitylabels<-read.table('UCI HAR Dataset/activity_labels.txt')

# combine train and test files
xtraintest<-rbind(xtrain, xtest)
# extract only the measurements on mean and standard deviation
meanstdrows<-grep('mean[(][)]|std[(][)]', features$V2)
df<-xtraintest[,meanstdrows]
# use descriptive names to name the activities
## convert the ytraintest values to their activity names
ytraintest<-rbind(ytrain, ytest)
activity<-activitylabels[match(ytraintest$V1, activitylabels$V1),2]
df<-cbind(activity, df)
# appropriately label data set with descriptive variable names
varnames<-append(sapply(features[meanstdrows,2], as.character),'activity', 0)
colnames(df)<-varnames
# calculate average of each variable for each activity for each subject
## attach subject number to data set
subjecttraintest<-rbind(subjecttrain, subjecttest)
df<-cbind(subjecttraintest, df)
colnames(df)[1]<-'subjectid'
## calculate average of each variable
df %>%
     group_by_at(vars(subjectid,activity)) %>%
     summarise_all(mean) -> df2
# export tidy data
write.table(df2, 'tidydata.txt')