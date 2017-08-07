# codebook.md
File to list and describe the variables in tidydata.txt

 "subjectid" - identification number of subject
                1-30
 "activity"  - activity being performed for that measurement. either:
                walking, walking upstairs, walking downstairs, standing, sitting, or laying
----------------
Measurements
----------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to
remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
----------------

"tBodyAcc-mean()-X"           - mean of time domain body acceleration in the X direction   
"tBodyAcc-mean()-Y"           - mean of time domain body acceleration in the Y direction
"tBodyAcc-mean()-Z"           - mean of time domain body acceleration in the Z direction
"tBodyAcc-std()-X"            - standard deviation of time domain body acceleration in the X direction
"tBodyAcc-std()-Y"            - standard deviation of time domain body acceleration in the Y direction
"tBodyAcc-std()-Z"            - standard deviation of time domain body acceleration in the Z direction
"tGravityAcc-mean()-X"       - mean of time domain gravity acceleration in X direction
"tGravityAcc-mean()-Y"        - mean of time domain gravity acceleration in Y direction
"tGravityAcc-mean()-Z"        - mean of time domain gravity acceleration in Z direction
"tGravityAcc-std()-X"        - standard deviation of time domain gravity acceleration in X direction
"tGravityAcc-std()-Y"          - standard deviation of time domain gravity acceleration in Y direction
"tGravityAcc-std()-Z"          - standard deviation of time domain gravity acceleration in Z direction
"tBodyAccJerk-mean()-X"      - mean of time domain body jerk in X direction
"tBodyAccJerk-mean()-Y"       - mean of time domain body jerk in Y direction
"tBodyAccJerk-mean()-Z"       - mean of time domain body jerk in Z direction
"tBodyAccJerk-std()-X"       - standard deviation of time domain body jerk in X direction
"tBodyAccJerk-std()-Y"        - standard deviation of time domain body jerk in Y direction
"tBodyAccJerk-std()-Z"        - standard deviation of time domain body jerk in Z direction
"tBodyGyro-mean()-X"         - mean of time domain body gyroscope in the X direction
"tBodyGyro-mean()-Y"          - mean of time domain body gyroscope in the Y direction
"tBodyGyro-mean()-Z"          - mean of time domain body gyroscope in the Z direction
"tBodyGyro-std()-X"          - standard deviation of time domain body gyroscope in the X direction
"tBodyGyro-std()-Y"           - standard deviation of time domain body gyroscope in the Y direction
"tBodyGyro-std()-Z"           - standard deviation of time domain body gyroscope in the Z direction
"tBodyGyroJerk-mean()-X"     - mean of time domain jerk gyroscope in X direction
"tBodyGyroJerk-mean()-Y"      - mean of time domain jerk gyroscope in Y direction
"tBodyGyroJerk-mean()-Z"      - mean of time domain jerk gyroscope in Z direction
"tBodyGyroJerk-std()-X"      - standard deviation of time domain jerk gyroscope in X direction
"tBodyGyroJerk-std()-Y"       - standard deviation of time domain jerk gyroscope in Y direction
"tBodyGyroJerk-std()-Z"     - standard deviation of time domain jerk gyroscope in Z direction 
"tBodyAccMag-mean()"         - mean of time domain body acceleration magnitude
"tBodyAccMag-std()"           - standard deviation of time domain body acceleration magnitude
"tGravityAccMag-mean()"       - mean of time domain gravity acceleration magnitude
"tGravityAccMag-std()"       - mean of time domain gravity acceleration magnitude
"tBodyAccJerkMag-mean()"     - mean of time domain body jerk magnitude
"tBodyAccJerkMag-std()"       - standard deviation of time domain jerk magnitude
"tBodyGyroMag-mean()"        - mean of time domain body gyroscope magnitude
"tBodyGyroMag-std()"          - standard deviation of time domain body gyroscope magnitude
"tBodyGyroJerkMag-mean()"     - mean of time domain body jerk gyroscope magnitude
"tBodyGyroJerkMag-std()"     - standard deviation of time domain body jerk gyroscope magnitude
"fBodyAcc-mean()-X"           - mean of fast fourier transform of body acceleration in X direction
"fBodyAcc-mean()-Y"           - mean of fast fourier transform of body acceleration in Y direction
"fBodyAcc-mean()-Z"          - mean of fast fourier transform of body acceleration in Z direction
"fBodyAcc-std()-X"           - standard deviation of fast fourier transform of body acceleration in X direction
"fBodyAcc-std()-Y"            - standard deviation of fast fourier transform of body acceleration in Y direction
"fBodyAcc-std()-Z"           - standard deviation of fast fourier transform of body acceleration in Z direction
"fBodyAccJerk-mean()-X"       - mean of fast fourier transform of body jerk in X direction
"fBodyAccJerk-mean()-Y"       - mean of fast fourier transform of body jerk in Y direction
"fBodyAccJerk-mean()-Z"      - mean of fast fourier transform of body jerk in Z direction
"fBodyAccJerk-std()-X"       - standard deviation of fast fourier transofrm of body jerk in X direction
"fBodyAccJerk-std()-Y"        - standard deviation of fast fourier transofrm of body jerk in Y direction
"fBodyAccJerk-std()-Z"       - standard deviation of fast fourier transofrm of body jerk in Z direction
"fBodyGyro-mean()-X"          - mean of fast fourier transform of body gyroscope in X direction
"fBodyGyro-mean()-Y"          - mean of fast fourier transform of body gyroscope in Y direction
"fBodyGyro-mean()-Z"         - mean of fast fourier transform of body gyroscope in Z direction
"fBodyGyro-std()-X"           - standard deviation of fast fourier transform of body gyroscope in X direction
"fBodyGyro-std()-Y"           - standard deviation of fast fourier transform of body gyroscope in Y direction
"fBodyGyro-std()-Z"          - standard deviation of fast fourier transform of body gyroscope in Z direction
"fBodyAccMag-mean()"          - mean of fast fourier transform of body acceleration magnitude
"fBodyAccMag-std()"           - standard deviation of fast fourier transform of body acceleration magnitude
"fBodyBodyAccJerkMag-mean()"  - mean of fast fourier transform of body jerk magnitude
"fBodyBodyAccJerkMag-std()"   - standard deviation of fast fourier transform of body jerk magnitude
"fBodyBodyGyroMag-mean()"     - mean of fast fourier transform of body gyroscope magnitude
"fBodyBodyGyroMag-std()"     - standard deviation of fast fourier transform of body gyroscope magnitude
"fBodyBodyGyroJerkMag-mean()" - mean of fast fourier transform of body jerk gyroscope magnitude
"fBodyBodyGyroJerkMag-std()" - standard deviation of fast fourier transform of body jerk gyroscope magnitude
