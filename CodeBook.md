Study design
============

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Variable

During the getting and cleansing data in `run_analysis.R`, the following variables are used:

- `X_train`, `X_test`, `y_train`, `y_test`, `subject_train` and `subject_test` contain the raw data respectively from the files `X_train.txt`, `X_test.txt`, `y_train.txt`, `y_test.txt`, `subject_train.txt` and `subject_test.txt`.
- `X`, `y` and `subject` merge the training and test sets.
- `features` contains all the measurement names corresponding to the column names of X data set from the file `features.txt`.
- `activity` contains all the activity labels from the file `activity_labels.txt`.
- `allData` merges X, y and subject as total data set.
- `meltData` contains the data set with each variable (measurement) and value for each activity and each subject.
- `avgData` contains the final tidy data set with the average of each variable (measurement) for each activity and each subject.

Code book
=========

This code book summarizes the fields in the tidy data file `tidy_average.txt`.

No. | Name | Meaning/Units
------- | ------- | -------
1 | subject   |  the ID of subjects with range from 1 to 30 
2 | activity | the descriptive names of the activities performed (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
3 | tBodyAccMeanX | average of timed body linear acceleration signal on X directtion
4 | tBodyAccMeanY | average of timed body linear acceleration signal on Y directtion
5 | tBodyAccMeanZ | average of timed body linear acceleration signal on Z directtion
6 | tBodyAccStdX | standard deviation of timed body linear acceleration signal on X directtion
7 | tBodyAccStdY | standard deviation of timed body linear acceleration signal on Y directtion
8 | tBodyAccStdZ | standard deviation of timed body linear acceleration signal on Z directtion
9 | tGravityAccMeanX | average of timed gravity acceleration signal on X directtion
10 | tGravityAccMeanY | average of timed gravity acceleration signal on Y directtion
11 | tGravityAccMeanZ | average of timed gravity acceleration signal on Z directtion
12 | tGravityAccStdX | standard deviation of timed gravity acceleration signal on X directtion
13 | tGravityAccStdY | standard deviation of timed gravity acceleration signal on Y directtion
14 | tGravityAccStdZ | standard deviation of timed gravity acceleration signal on Z directtion
15 | tBodyAccJerkMeanX | average of timed body linear acceleration Jerk signal on X directtion
16 | tBodyAccJerkMeanY | average of timed body linear acceleration Jerk signal on Y directtion
17 | tBodyAccJerkMeanZ | average of timed body linear acceleration Jerk signal on Z directtion
18 | tBodyAccJerkStdX | standard deviation of timed body linear acceleration Jerk signal on X directtion
19 | tBodyAccJerkStdY | standard deviation of timed body linear acceleration Jerk signal on Y directtion
20 | tBodyAccJerkStdZ | standard deviation of timed body linear acceleration Jerk signal on Z directtion
21 | tBodyGyroMeanX | average of timed body gyroscope signal on X directtion
22 | tBodyGyroMeanY | average of timed body gyroscope signal on Y directtion
23 | tBodyGyroMeanZ | average of timed body gyroscope signal on Z directtion
24 | tBodyGyroStdX | standard deviation of timed body gyroscope signal on X directtion
25 | tBodyGyroStdY | standard deviation of timed body gyroscope signal on Y directtion
26 | tBodyGyroStdZ | standard deviation of timed body gyroscope signal on Z directtion
27 | tBodyGyroJerkMeanX | average of timed body gyroscope Jerk signal on X directtion
28 | tBodyGyroJerkMeanY | average of timed body gyroscope Jerk signal on Y directtion
29 | tBodyGyroJerkMeanZ | average of timed body gyroscope Jerk signal on Z directtion
30 | tBodyGyroJerkStdX | standard deviation of timed body gyroscope Jerk signal on X directtion
31 | tBodyGyroJerkStdY | standard deviation of timed body gyroscope Jerk signal on Y directtion
32 | tBodyGyroJerkStdZ | standard deviation of timed body gyroscope Jerk signal on Z directtion
33 | tBodyAccMagMean | average of timed body acceleration signal magnitude
34 | tBodyAccMagStd | standard deviation of timed body acceleration signal magnitude
35 | tGravityAccMagMean | average of timed gravity acceleration signal magnitude
36 | tGravityAccMagStd | standard deviation of timed gravity acceleration signal magnitude
37 | tBodyAccJerkMagMean | average of timed body acceleration Jerk signal magitude
38 | tBodyAccJerkMagStd | standard deviation of timed body acceleration Jerk signal magitude
39 | tBodyGyroMagMean | average of timed body gyroscope signal magitude
40 | tBodyGyroMagStd | standard deviaton of timed body gyroscope signal magitude
41 | tBodyGyroJerkMagMean | average of timed body gyroscope Jerk signal magnitude
42 | tBodyGyroJerkMagStd | standard deviation of timed body gyroscope Jerk signal magnitude
43 | fBodyAccMeanX | average of body linear acceleration frequency signal on X directtion
44 | fBodyAccMeanY | average of body linear acceleration frequency signal on Y directtion
45 | fBodyAccMeanZ | average of body linear acceleration frequency signal on Z directtion
46 | fBodyAccStdX | standard deviation of body linear acceleration frequency signal on X directtion
47 | fBodyAccStdY | standard deviation of body linear acceleration frequency signal on Y directtion
48 | fBodyAccStdZ | standard deviation of body linear acceleration frequency signal on Z directtion
49 | fBodyAccJerkMeanX | average of body linear acceleration frequency Jerk signal on X directtion
50 | fBodyAccJerkMeanY | average of body linear acceleration frequency Jerk signal on Y directtion
51 | fBodyAccJerkMeanZ | average of body linear acceleration frequency Jerk signal on Z directtion
52 | fBodyAccJerkStdX | standard deviation of body linear acceleration frequency Jerk signal on X directtion
53 | fBodyAccJerkStdY | standard deviation of body linear acceleration frequency Jerk signal on Y directtion
54 | fBodyAccJerkStdZ | standard deviation of body linear acceleration frequency Jerk signal on Z directtion
55 | fBodyGyroMeanX | average of body gyroscope frequency signal on X directtion
56 | fBodyGyroMeanY | average of body gyroscope frequency signal on Y directtion
57 | fBodyGyroMeanZ | average of body gyroscope frequency signal on Z directtion
58 | fBodyGyroStdX | standard deviation of body gyroscope frequency signal on X directtion
59 | fBodyGyroStdY | standard deviation of body gyroscope frequency signal on Y directtion
60 | fBodyGyroStdZ | standard deviation of body gyroscope frequency signal on Z directtion
61 | fBodyAccMagMean | average of body acceleration frequency signal magitude
62 | fBodyAccMagStd | standard deviation of body acceleration frequency signal magitude
63 | fBodyAccJerkMagMean | average of body acceleration frequency Jerk signal magnitude
64 | fBodyAccJerkMagStd | standard deviation of body acceleration frequency Jerk signal magnitude
65 | fBodyGyroMagMean | average of body gyroscope frequecy signal magitude
66 | fBodyGyroMagStd | standard deviation of body gyroscope frequecy signal magitude
67 | fBodyGyroJerkMagMean | average of body gyroscope frequency Jerk signal magnitude
68 | fBodyGyroJerkMagStd | standard deviation of body gyroscope frequency Jerk signal magnitude

