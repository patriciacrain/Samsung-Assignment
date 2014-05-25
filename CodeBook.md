Code Book for HARdata_tidy.txt
------------------------------

### Overview

This dataset is a summarization of Human Activity Recognition data collected using the embedded accelerometer and gyroscope in the Samsung Galaxy S II. The researchers who provided the original data set explain the experiment as follows:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The original data set and more information about it can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### General Explanation of the Variables and How they are Named

The variables (aka features) are explained by the original researchers as follows:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz... The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)...

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Note that '-XYZ' is used to denote 3-axial signals which are represented individually in the variables as X, Y and Z. The above signals were used, in the original dataset, to estimate a number of variables of the feature vector for each pattern of which we retained only the Mean and Standard Deviation calculations.   

### Data Dictionary

| Variable Name | Type | Values | Domain | Description |
| ------------- | ---- | ------ | ------ | ----------- |
| Activity | Categorical | 6 (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) | NA | The six activities performed by subjects in the experiment |
| Subject | Categorical | 1-30 | NA | A number designating each indivdual who participated in the experiment |
| tBodyAcc.mean.X.Avg | Quantitative | Range (from 0.2216 to 0.3015) | Time | The average estimated mean of the body acceleration signal in the X direction |
| tBodyAcc.mean.Y.Avg | Quantitative | Range (from -0.040514 to -0.001308) | Time | The average estimated mean of the body acceleration signal in the Y direction |
| tBodyAcc.mean.Z.Avg | Quantitative | Range (from -0.15251 to -0.07538)| Time | The average estimated mean of the body acceleration signal in the Z direction |
| tBodyAcc.std.X.Avg | Quantitative | Range (from -0.9961 to 0.6269) | Time | The average estimated standard deviation of the body acceleration signal in the X direction |
| tBodyAcc.std.Y.Avg | Quantitative | Range (from -0.99024 to 0.61694) | Time | The average estimated standard deviation of the body acceleration signal in the Y direction |
| tBodyAcc.std.Z.Avg | Quantitative | Range (from -0.9877 to 0.6090) | Time | The average estimated standard deviation of the body acceleration signal in the Z direction |
| tGravityAcc.mean.X.Avg | Quantitative | Range (from -0.6800 to 0.9745) | Time | The average estimated mean of the gravity acceleration signal in the X direction |
| tGravityAcc.mean.Y.Avg | Quantitative | Range (from -0.47989 to 0.95659) | Time | The average estimated mean of the gravity acceleration signal in the Y direction |
| tGravityAcc.mean.Z.Avg | Quantitative | Range (from -0.49509 to 0.95787) | Time | The average estimated mean of the gravity acceleration signal in the Z direction |
| tGravityAcc.std.X.Avg | Quantitative | Range (from -0.9968 to -0.8296) | Time | The average estimated standard deviation of the gravity acceleration signal in the X direction |
| tGravityAcc.std.Y.Avg | Quantitative | Range (from -0.9942 to -0.6436) | Time | The average estimated standard deviation of the gravity acceleration signal in the Y direction |
| tGravityAcc.std.Z.Avg | Quantitative | Range (from -0.9910 to -0.6102) | Time | The average estimated standard deviation of the gravity acceleration signal in the Z direction |
| tBodyAccJerk.mean.X.Avg | Quantitative | Range (from 0.04269 to 0.13019)| Time | The average estimated mean of Jerk signals of body linear acceleration in the X direction |
| tBodyAccJerk.mean.Y.Avg | Quantitative | Range (from -0.0386872 to 0.0568186)| Time | The average estimated mean of Jerk signals of body linear acceleration in the Y direction |
| tBodyAccJerk.mean.Z.Avg | Quantitative | Range (from -0.067458 to 0.038053)| Time | The average estimated mean of Jerk signals of body linear acceleration in the Z direction |
| tBodyAccJerk.std.X.Avg | Quantitative | Range (from -0.9946 to 0.5443)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the X direction |
| tBodyAccJerk.std.Y.Avg | Quantitative | Range (from -0.9895 to 0.3553)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the Y direction |
| tBodyAccJerk.std.Z.Avg | Quantitative | Range (from -0.99329 to 0.03102)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the Z direction |
| tBodyGyro.mean.X.Avg | Quantitative | Range (from -0.20578 to 0.19270)| Time | The average estimated mean of the angular velocity in the X direction |
| tBodyGyro.mean.Y.Avg | Quantitative | Range (from -0.20421 to 0.02747)| Time | The average estimated mean of the angular velocity in the Y direction |
| tBodyGyro.mean.Z.Avg | Quantitative | Range (from -0.07245 to 0.17910)| Time | The average estimated mean of the angular velocity in the Z direction |
| tBodyGyro.std.X.Avg | Quantitative | Range (from -0.9943 to 0.2677)| Time | The average estimated standard deviation of the angular velocity in the X direction |
| tBodyGyro.std.Y.Avg | Quantitative | Range (from -0.9942 to 0.4765)| Time | The average estimated standard deviation of the angular velocity in the Y direction |
| tBodyGyro.std.Z.Avg | Quantitative | Range (from -0.9855 to 0.5649)| Time | The average estimated standard deviation of the angular velocity in the Z direction |
| tBodyGyroJerk.mean.X.Avg | Quantitative | Range (from -0.15721 to -0.02209)| Time | The average estimated mean of Jerk signals of angular velocity in the X direction |
| tBodyGyroJerk.mean.Y.Avg | Quantitative | Range (from -0.07681 to -0.01320)| Time | The average estimated mean of Jerk signals of angular velocity in the Y direction |
| tBodyGyroJerk.mean.Z.Avg | Quantitative | Range (from -0.092500 to -0.006941)| Time | The average estimated mean of Jerk signals of angular velocity in the Z direction |
| tBodyGyroJerk.std.X.Avg | Quantitative | Range (from -0.9965 to 0.1791)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the X direction |
| tBodyGyroJerk.std.Y.Avg | Quantitative | Range (from -0.9971 to 0.2959)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the Y direction |
| tBodyGyroJerk.std.Z.Avg | Quantitative | Range (from -0.9954 to 0.1932)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the Y direction |
| tBodyAccMag.mean.Avg | Quantitative | Range (from -0.9865 to 0.6446) | Time | The average estimated mean of the magnitude of three-dimensional body acceleration signals |
| tBodyAccMag.std.Avg | Quantitative | Range (from -0.9865 to 0.4284) | Time | The average estimated standard deviation of the magnitude of three-dimensional body acceleration signals |
| tGravityAccMag.mean.Avg | Quantitative | Range (from -0.9865 to 0.6446) | Time | The average estimated mean of the magnitude of three-dimensional gravity acceleration signals |
| tGravityAccMag.std.Avg | Quantitative | Range (from -0.9865 to 0.4284) | Time | The average estimated standard deviation of the magnitude of three-dimensional gravity acceleration signals |
| tBodyAccJerkMag.mean.Avg | Quantitative | Range (from -0.9928 to 0.4345) | Time | The average estimated mean of Jerk signals of the magnitude of three-dimensional body acceleration |
| tBodyAccJerkMag.std.Avg | Quantitative | Range (from -0.9946 to 0.4506) | Time | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional body acceleration |
| tBodyGyroMag.mean.Avg | Quantitative | Range (from -0.9807 to 0.4180) | Time | The average estimated mean of the magnitude of angular velocity three-dimensional signals |
| tBodyGyroMag.std.Avg | Quantitative | Range (from -0.9814 to 0.3000) | Time | The average estimated standard deviation of the magnitude of angular velocity three-dimensional signals |
| tBodyGyroJerkMag.mean.Avg | Quantitative | Range (from -0.99732 to 0.08758) | Time | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
| tBodyGyroJerkMag.std.Avg | Quantitative | Range (from -0.9977 to 0.2502) | Time | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional angular velocity |
| fBodyAcc.mean.X.Avg | Quantitative | Range (from -0.9952 to 0.5370) | Frequency | The average estimated mean of the body acceleration signal in the X direction |
| fBodyAcc.mean.Y.Avg | Quantitative | Range (from -0.98903 to 0.52419) | Frequency | The average estimated mean of the body acceleration signal in the Y direction |
| fBodyAcc.mean.Z.Avg | Quantitative | Range (from -0.9895 to 0.2807) | Frequency | The average estimated mean of the body acceleration signal in the Z direction |
| fBodyAcc.std.X.Avg | Quantitative | Range (from -0.9966 to 0.6585) | Frequency | The average estimated standard deviation of the body acceleration signal in the X direction |
| fBodyAcc.std.Y.Avg | Quantitative | Range (from -0.99068 to 0.56019) | Frequency | The average estimated standard deviation of the body acceleration signal in the Y direction |
| fBodyAcc.std.Z.Avg | Quantitative | Range (from -0.9872 to 0.6871) | Frequency | The average estimated standard deviation of the body acceleration signal in the Z direction |
| fBodyAccJerk.mean.X.Avg | Quantitative | Range (from -0.9946 to 0.4743)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the X direction |
| fBodyAccJerk.mean.Y.Avg | Quantitative | Range (from -0.9894 to 0.2767)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the Y direction |
| fBodyAccJerk.mean.Z.Avg | Quantitative | Range (from -0.9920 to  0.1578)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the Z direction |
| fBodyAccJerk.std.X.Avg | Quantitative | Range (from -0.9951 to 0.4768)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the X direction |
| fBodyAccJerk.std.Y.Avg | Quantitative | Range (from -0.9905 to 0.3498)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the Y direction |
| fBodyAccJerk.std.Z.Avg | Quantitative | Range (from -0.993108 to -0.006236)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the Z direction |
| fBodyGyro.mean.X.Avg | Quantitative | Range (from -0.9931 to 0.4750)| Frequency | The average estimated mean of the angular velocity in the X direction |
| fBodyGyro.mean.Y.Avg | Quantitative | Range (from -0.9940 to 0.3288)| Frequency | The average estimated mean of the angular velocity in the Y direction |
| fBodyGyro.mean.Z.Avg | Quantitative | Range (from -0.9860 to 0.4924)| Frequency | The average estimated mean of the angular velocity in the Z direction |
| fBodyGyro.std.X.Avg | Quantitative | Range (from -0.9947 to 0.1966)| Frequency | The average estimated standard deviation of the angular velocity in the X direction |
| fBodyGyro.std.Y.Avg | Quantitative | Range (from -0.9944 to 0.6462)| Frequency | The average estimated standard deviation of the angular velocity in the Y direction |
| fBodyGyro.std.Z.Avg | Quantitative | Range (from -0.9867 to 0.5225)| Frequency | The average estimated standard deviation of the angular velocity in the Z direction |
| fBodyAccMag.mean.Avg | Quantitative | Range (from -0.9868 to 0.5866) | Frequency | The average estimated mean of the magnitude of three-dimensional body acceleration signals |
| fBodyAccMag.std.Avg | Quantitative | Range (from -0.9876 to 0.1787) | Frequency | The average estimated standard deviation of the magnitude of three-dimensional body acceleration signals |
| fBodyBodyAccJerkMag.mean.Avg | Quantitative | Range (from -0.9940 to 0.5384) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional body acceleration |
| fBodyBodyAccJerkMag.std.Avg | Quantitative | Range (from -0.9944 to 0.3163) | Frequency | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional body acceleration |
| fBodyBodyGyroMag.mean.Avg | Quantitative | Range (from -0.9865 to 0.2040) | Frequency | The average estimated mean of the magnitude of angular velocity three-dimensional signals |
| fBodyBodyGyroMag.std.Avg | Quantitative | Range (from -0.9815 to 0.2367) | Frequency | The average estimated standard deviation of the magnitude of angular velocity three-dimensional signals |
| fBodyBodyGyroJerkMag.mean.Avg | Quantitative | Range (from -0.9976 to 0.1466) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
| fBodyBodyGyroJerkMag.std.Avg | Quantitative | Range (from -0.9976 to 0.2878) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
| tBodyAcc.mean.X-Avg | Quantitative | Range (from 0.2216 to 0.3015) | Time | The average estimated mean of the body acceleration signal in the X direction |
| tBodyAcc.mean.Y-Avg | Quantitative | Range (from -0.040514 to -0.001308) | Time | The average estimated mean of the body acceleration signal in the Y direction |
| tBodyAcc.mean.Z-Avg | Quantitative | Range (from -0.15251 to -0.07538)| Time | The average estimated mean of the body acceleration signal in the Z direction |
| tBodyAcc.std.X-Avg | Quantitative | Range (from -0.9961 to 0.6269) | Time | The average estimated standard deviation of the body acceleration signal in the X direction |
| tBodyAcc.std.Y-Avg | Quantitative | Range (from -0.99024 to 0.61694) | Time | The average estimated standard deviation of the body acceleration signal in the Y direction |
| tBodyAcc.std.Z-Avg | Quantitative | Range (from -0.9877 to 0.6090) | Time | The average estimated standard deviation of the body acceleration signal in the Z direction |
| tGravityAcc.mean.X-Avg | Quantitative | Range (from -0.6800 to 0.9745) | Time | The average estimated mean of the gravity acceleration signal in the X direction |
| tGravityAcc.mean.Y-Avg | Quantitative | Range (from -0.47989 to 0.95659) | Time | The average estimated mean of the gravity acceleration signal in the Y direction |
| tGravityAcc.mean.Z-Avg | Quantitative | Range (from -0.49509 to 0.95787) | Time | The average estimated mean of the gravity acceleration signal in the Z direction |
| tGravityAcc.std.X-Avg | Quantitative | Range (from -0.9968 to -0.8296) | Time | The average estimated standard deviation of the gravity acceleration signal in the X direction |
| tGravityAcc.std.Y-Avg | Quantitative | Range (from -0.9942 to -0.6436) | Time | The average estimated standard deviation of the gravity acceleration signal in the Y direction |
| tGravityAcc.std.Z-Avg | Quantitative | Range (from -0.9910 to -0.6102) | Time | The average estimated standard deviation of the gravity acceleration signal in the Z direction |
| tBodyAccJerk.mean.X-Avg | Quantitative | Range (from 0.04269 to 0.13019)| Time | The average estimated mean of Jerk signals of body linear acceleration in the X direction |
| tBodyAccJerk.mean.Y-Avg | Quantitative | Range (from -0.0386872 to 0.0568186)| Time | The average estimated mean of Jerk signals of body linear acceleration in the Y direction |
| tBodyAccJerk.mean.Z-Avg | Quantitative | Range (from -0.067458 to 0.038053)| Time | The average estimated mean of Jerk signals of body linear acceleration in the Z direction |
| tBodyAccJerk.std.X-Avg | Quantitative | Range (from -0.9946 to 0.5443)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the X direction |
| tBodyAccJerk.std.Y-Avg | Quantitative | Range (from -0.9895 to 0.3553)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the Y direction |
| tBodyAccJerk.std.Z-Avg | Quantitative | Range (from -0.99329 to 0.03102)| Time | The average estimated standard deviation of Jerk signals of body linear acceleration in the Z direction |
| tBodyGyro.mean.X-Avg | Quantitative | Range (from -0.20578 to 0.19270)| Time | The average estimated mean of the angular velocity in the X direction |
| tBodyGyro.mean.Y-Avg | Quantitative | Range (from -0.20421 to 0.02747)| Time | The average estimated mean of the angular velocity in the Y direction |
| tBodyGyro.mean.Z-Avg | Quantitative | Range (from -0.07245 to 0.17910)| Time | The average estimated mean of the angular velocity in the Z direction |
| tBodyGyro.std.X-Avg | Quantitative | Range (from -0.9943 to 0.2677)| Time | The average estimated standard deviation of the angular velocity in the X direction |
| tBodyGyro.std.Y-Avg | Quantitative | Range (from -0.9942 to 0.4765)| Time | The average estimated standard deviation of the angular velocity in the Y direction |
| tBodyGyro.std.Z-Avg | Quantitative | Range (from -0.9855 to 0.5649)| Time | The average estimated standard deviation of the angular velocity in the Z direction |
| tBodyGyroJerk.mean.X-Avg | Quantitative | Range (from -0.15721 to -0.02209)| Time | The average estimated mean of Jerk signals of angular velocity in the X direction |
| tBodyGyroJerk.mean.Y-Avg | Quantitative | Range (from -0.07681 to -0.01320)| Time | The average estimated mean of Jerk signals of angular velocity in the Y direction |
| tBodyGyroJerk.mean.Z-Avg | Quantitative | Range (from -0.092500 to -0.006941)| Time | The average estimated mean of Jerk signals of angular velocity in the Z direction |
| tBodyGyroJerk.std.X-Avg | Quantitative | Range (from -0.9965 to 0.1791)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the X direction |
| tBodyGyroJerk.std.Y-Avg | Quantitative | Range (from -0.9971 to 0.2959)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the Y direction |
| tBodyGyroJerk.std.Z-Avg | Quantitative | Range (from -0.9954 to 0.1932)| Time | The average estimated standard deviation of Jerk signals of angular velocity in the Y direction |
| tBodyAccMag.mean-Avg | Quantitative | Range (from -0.9865 to 0.6446) | Time | The average estimated mean of the magnitude of three-dimensional body acceleration signals |
| tBodyAccMag.std-Avg | Quantitative | Range (from -0.9865 to 0.4284) | Time | The average estimated standard deviation of the magnitude of three-dimensional body acceleration signals |
| tGravityAccMag.mean-Avg | Quantitative | Range (from -0.9865 to 0.6446) | Time | The average estimated mean of the magnitude of three-dimensional gravity acceleration signals |
| tGravityAccMag.std-Avg | Quantitative | Range (from -0.9865 to 0.4284) | Time | The average estimated standard deviation of the magnitude of three-dimensional gravity acceleration signals |
| tBodyAccJerkMag.mean-Avg | Quantitative | Range (from -0.9928 to 0.4345) | Time | The average estimated mean of Jerk signals of the magnitude of three-dimensional body acceleration |
| tBodyAccJerkMag.std-Avg | Quantitative | Range (from -0.9946 to 0.4506) | Time | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional body acceleration |
| tBodyGyroMag.mean-Avg | Quantitative | Range (from -0.9807 to 0.4180) | Time | The average estimated mean of the magnitude of angular velocity three-dimensional signals |
| tBodyGyroMag.std-Avg | Quantitative | Range (from -0.9814 to 0.3000) | Time | The average estimated standard deviation of the magnitude of angular velocity three-dimensional signals |
| tBodyGyroJerkMag.mean-Avg | Quantitative | Range (from -0.99732 to 0.08758) | Time | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
| tBodyGyroJerkMag.std-Avg | Quantitative | Range (from -0.9977 to 0.2502) | Time | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional angular velocity |
| fBodyAcc.mean.X-Avg | Quantitative | Range (from -0.9952 to 0.5370) | Frequency | The average estimated mean of the body acceleration signal in the X direction |
| fBodyAcc.mean.Y-Avg | Quantitative | Range (from -0.98903 to 0.52419) | Frequency | The average estimated mean of the body acceleration signal in the Y direction |
| fBodyAcc.mean.Z-Avg | Quantitative | Range (from -0.9895 to 0.2807) | Frequency | The average estimated mean of the body acceleration signal in the Z direction |
| fBodyAcc.std.X-Avg | Quantitative | Range (from -0.9966 to 0.6585) | Frequency | The average estimated standard deviation of the body acceleration signal in the X direction |
| fBodyAcc.std.Y-Avg | Quantitative | Range (from -0.99068 to 0.56019) | Frequency | The average estimated standard deviation of the body acceleration signal in the Y direction |
| fBodyAcc.std.Z-Avg | Quantitative | Range (from -0.9872 to 0.6871) | Frequency | The average estimated standard deviation of the body acceleration signal in the Z direction |
| fBodyAccJerk.mean.X-Avg | Quantitative | Range (from -0.9946 to 0.4743)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the X direction |
| fBodyAccJerk.mean.Y-Avg | Quantitative | Range (from -0.9894 to 0.2767)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the Y direction |
| fBodyAccJerk.mean.Z-Avg | Quantitative | Range (from -0.9920 to  0.1578)| Frequency | The average estimated mean of Jerk signals of body linear acceleration in the Z direction |
| fBodyAccJerk.std.X-Avg | Quantitative | Range (from -0.9951 to 0.4768)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the X direction |
| fBodyAccJerk.std.Y-Avg | Quantitative | Range (from -0.9905 to 0.3498)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the Y direction |
| fBodyAccJerk.std.Z-Avg | Quantitative | Range (from -0.993108 to -0.006236)| Frequency | The average estimated standard deviation of Jerk signals of body linear acceleration in the Z direction |
| fBodyGyro.mean.X-Avg | Quantitative | Range (from -0.9931 to 0.4750)| Frequency | The average estimated mean of the angular velocity in the X direction |
| fBodyGyro.mean.Y-Avg | Quantitative | Range (from -0.9940 to 0.3288)| Frequency | The average estimated mean of the angular velocity in the Y direction |
| fBodyGyro.mean.Z-Avg | Quantitative | Range (from -0.9860 to 0.4924)| Frequency | The average estimated mean of the angular velocity in the Z direction |
| fBodyGyro.std.X-Avg | Quantitative | Range (from -0.9947 to 0.1966)| Frequency | The average estimated standard deviation of the angular velocity in the X direction |
| fBodyGyro.std.Y-Avg | Quantitative | Range (from -0.9944 to 0.6462)| Frequency | The average estimated standard deviation of the angular velocity in the Y direction |
| fBodyGyro.std.Z-Avg | Quantitative | Range (from -0.9867 to 0.5225)| Frequency | The average estimated standard deviation of the angular velocity in the Z direction |
| fBodyAccMag.mean-Avg | Quantitative | Range (from -0.9868 to 0.5866) | Frequency | The average estimated mean of the magnitude of three-dimensional body acceleration signals |
| fBodyAccMag.std-Avg | Quantitative | Range (from -0.9876 to 0.1787) | Frequency | The average estimated standard deviation of the magnitude of three-dimensional body acceleration signals |
| fBodyBodyAccJerkMag.mean-Avg | Quantitative | Range (from -0.9940 to 0.5384) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional body acceleration |
| fBodyBodyAccJerkMag.std-Avg | Quantitative | Range (from -0.9944 to 0.3163) | Frequency | The average estimated standard deviation of Jerk signals of the magnitude of three-dimensional body acceleration |
| fBodyBodyGyroMag.mean-Avg | Quantitative | Range (from -0.9865 to 0.2040) | Frequency | The average estimated mean of the magnitude of angular velocity three-dimensional signals |
| fBodyBodyGyroMag.std-Avg | Quantitative | Range (from -0.9815 to 0.2367) | Frequency | The average estimated standard deviation of the magnitude of angular velocity three-dimensional signals |
| fBodyBodyGyroJerkMag.mean-Avg | Quantitative | Range (from -0.9976 to 0.1466) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
| fBodyBodyGyroJerkMag.std-Avg | Quantitative | Range (from -0.9976 to 0.2878) | Frequency | The average estimated mean of Jerk signals of the magnitude of three-dimensional angular velocity |
