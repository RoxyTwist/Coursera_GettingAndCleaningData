## Code Book

This code book describes all of the data fields in the `data_tidy.txt` file.


### Identifiers

 - `subject` - `integer` - The ID of the test subject
   - 1 - 30
 - `activity` - `factor` - with 6 levels, each one describing the type of activity performed by each subject
   - Walking
   - Walking Upstairs
   - Walking Downstairs
   - Sitting
   - Standing
   - Laying
 
### Measurements
 
 86 variables of class `integer`.
 These variable represent the mean values of all records for each activity and each subject.

### Variables 
All measurements are floating-point values, normalised and bounded within [-1,1].

* Average and Standard Deviations time of the body acceleration measurements (in the X, Y and Z directions):
     * TimeBodyAccelerometer-Mean()-X	
     * TimeBodyAccelerometer-Mean()-Y	
     * TimeBodyAccelerometer-Mean()-Z
     * TimeBodyAccelerometer-STD()-X
     * TimeBodyAccelerometer-STD()-Y
     * TimeBodyAccelerometer-STD()-Z

* Average and Standard Deviations of time of gravity acceleration (in the X, Y and Z directions):
    * TimeGravityAccelerometer-Mean()-X
    * TimeGravityAccelerometer-Mean()-Y
    * TimeGravityAccelerometer-Mean()-Z
    * TimeGravityAccelerometer-STD()-X
    * TimeGravityAccelerometer-STD()-Y
    * TimeGravityAccelerometer-STD()-Z

* Average and Standard Deviations of time of body acceleration jerk (in the X, Y and Z directions):
    * TimeBodyAccelerometerJerk-Mean()-X
    * TimeBodyAccelerometerJerk-Mean()-Y
    * TimeBodyAccelerometerJerk-Mean()-Z
    * TimeBodyAccelerometerJerk-STD()-X
    * TimeBodyAccelerometerJerk-STD()-Y
    * TimeBodyAccelerometerJerk-STD()-Z

* Average and Standard Deviations of time of the body angular velocity  measurements (in the X, Y and Z directions):
    * TimeBodyGyroscope-Mean()-X
    * TimeBodyGyroscope-Mean()-Y
    * TimeBodyGyroscope-Mean()-Z
    * TimeBodyGyroscope-STD()-X
    * TimeBodyGyroscope-STD()-Y
    * TimeBodyGyroscope-STD()-Z

* Average and Standard Deviations of time of body angular velocity jerk (in the X, Y and Z directions):
    * TimeBodyGyroscopeJerk-Mean()-X
    * TimeBodyGyroscopeJerk-Mean()-Y
    * TimeBodyGyroscopeJerk-Mean()-Z
    * TimeBodyGyroscopeJerk-STD()-X
    * TimeBodyGyroscopeJerk-STD()-Y
    * TimeBodyGyroscopeJerk-STD()-Z

* Average and standard deviation of the time magnitude of body acceleration and acceleration jerk:
    * TimeBodyAccelerometerMagnitude-Mean()
    * TimeBodyAccelerometerMagnitude-STD()
    * TimeBodyAccelerometerJerkMagnitude-Mean()
    * TimeBodyAccelerometerJerkMagnitude-STD()

* Average and standard deviation of the time of magnitude of gravity acceleration:
    * TimeGravityAccelerometerMagnitude-Mean()
    * TimeGravityAccelerometerMagnitude-STD()

* Average and standard deviation of the time of magnitude of body angular velocity and angular velocity jerk:
    * TimeBodyGyroscopeMagnitude-Mean()
    * TimeBodyGyroscopeMagnitude-STD()
    * TimeBodyGyroscopeJerkMagnitude-Mean()
    * TimeBodyGyroscopeJerkMagnitude-STD()

* Average and Standard Deviations frequency of the body acceleration measurements (in the X, Y and Z directions):
    * FrequencyBodyAccelerometer-Mean()-X
    * FrequencyBodyAccelerometer-Mean()-Y
    * FrequencyBodyAccelerometer-Mean()-Z
    * FrequencyBodyAccelerometer-STD()-X
    * FrequencyBodyAccelerometer-STD()-Y
    * FrequencyBodyAccelerometer-STD()-Z

* Weighted average of the frequency components of the frequency of the body acceleration measurements (in the X, Y and Z directions):
    * FrequencyBodyAccelerometer-MeanFreq()-X
    * FrequencyBodyAccelerometer-MeanFreq()-Y
    * FrequencyBodyAccelerometer-MeanFreq()-Z

* Average and Standard Deviations of frequency of body acceleration jerk (in the X, Y and Z directions):
    * FrequencyBodyAccelerometerJerk-Mean()-X
    * FrequencyBodyAccelerometerJerk-Mean()-Y
    * FrequencyBodyAccelerometerJerk-Mean()-Z
    * FrequencyBodyAccelerometerJerk-STD()-X
    * FrequencyBodyAccelerometerJerk-STD()-Y
    * FrequencyBodyAccelerometerJerk-STD()-Z

* Weighted average of the frequency components of the frequency of body acceleration jerk (in the X, Y and Z directions):
    * FrequencyBodyAccelerometerJerk-MeanFreq()-X
    * FrequencyBodyAccelerometerJerk-MeanFreq()-Y
    * FrequencyBodyAccelerometerJerk-MeanFreq()-Z

* Average and Standard Deviations of frequency of body angular velocity (in the X, Y and Z directions):
    * FrequencyBodyGyroscope-Mean()-X
    * FrequencyBodyGyroscope-Mean()-Y
    * FrequencyBodyGyroscope-Mean()-Z
    * FrequencyBodyGyroscope-STD()-X
    * FrequencyBodyGyroscope-STD()-Y
    * FrequencyBodyGyroscope-STD()-Z

* Weighted average of the frequency components of the frequency of the body angular velocity measurements (in the X, Y and Z directions):
    * FrequencyBodyGyroscope-MeanFreq()-X
    * FrequencyBodyGyroscope-MeanFreq()-Y
    * FrequencyBodyGyroscope-MeanFreq()-Z

* Average, standard deviation, and weighted average of the frequency components of the frequency of magnitude of body acceleration:
    * FrequencyBodyAccelerometerMagnitude-Mean()
    * FrequencyBodyAccelerometerMagnitude-STD()
    * FrequencyBodyAccelerometerMagnitude-MeanFreq()

* Average, standard deviation, and weighted average of the frequency components of the frequency of magnitude of body acceleration jerk:
    * FrequencyBodyAccelerometerJerkMagnitude-Mean()
    * FrequencyBodyAccelerometerJerkMagnitude-STD()
    * FrequencyBodyAccelerometerJerkMagnitude-MeanFreq()

* Average, standard deviation, and weighted average of the frequency components of the frequency of magnitude of body angular velocity:
    * FrequencyBodyGyroscopeMagnitude-Mean()
    * FrequencyBodyGyroscopeMagnitude-STD()
    * FrequencyBodyGyroscopeMagnitude-MeanFreq()

* Average, standard deviation, and weighted average of the frequency components of the frequency of magnitude of body angular velocity jerk:
    * FrequencyBodyGyroscopeJerkMagnitude-Mean()
    * FrequencyBodyGyroscopeJerkMagnitude-STD()
    * FrequencyBodyGyroscopeJerkMagnitude-MeanFreq()

### Transformations
The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set;
2. The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement,       and the others were discarded.
3. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section).
4. The variable names were replaced with descriptive variable names, using the following set of rules:
    - The initial f and t were expanded to Frequency and Time respectively.
    - Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and STD respectively.
    - Replaced (supposedly incorrect as per source's features_info.txt file) BodyBody with Body.

5. From the data set in step 4, the final data set was created by averaging each variable for each activity and subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script (see README.md file for usage instructions).

