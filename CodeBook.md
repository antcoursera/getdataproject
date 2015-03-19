# Getting and Cleaning Data Course Project

## CodeBook

Each measurement contains `Activity` (factor of activity names) and `Subject` (Subject number as in raw data).

It then contains a series of signals variables using the following pattern:

`<domain><source><sensor>{<jerk>}{<mag>}_<fun>{_<direction>}`

where

* `{...}` denotes an optional part of the name
* `<domain>` is domain of the signal, either `t` (time) or `f` (frequency)
* `<source>` is motion component of the sensor, either `Body` or `Gravity`
* `<sensor>` is type of either `Acc` (accelerometer), `Gyro` (gyroscope), 
* `<jerk>` identifies a `Jerk` signal 
* `<jerk>` identifies a `Mag` (magnitude) signal 
* `<fun` is the function name applied, either `mean` (Mean value) or `std` (Standard deviation)
* `<direction>` is used to denote 3-axial signals in the `X`, `Y` and `Z` directions 

### Units

`Acc` sensor units are standard gravity units `g`
`Gyro` sensor units are angular velocity in `radians/second`

### Full List of Variables

```
Subject
Activity
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std
```