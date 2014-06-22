Raw data
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

Study design
======================
I merged the training and the test sets to create one data set. Then, extracted only the measurements on the mean and standard deviation for each measurement. Then, I used descriptive activity names to name the activities in the data set instead of numbers
from 1 to 6. Then, I appropriately labeled the data set with descriptive variable names. Finally, a tidy dataset was created that
has the average of each variable for each activity and each subject. 

Codebook
============================

**subjectId** :int

    Id of the subject who performed the experiment
        1..30   .1 to 30

**activity** : Factor

    Name of the activity that a subject performed
        WALKING .Subject is walking
        WALKING_UPSTAIRS .Subject is walking upstairs
        WALKING_DOWNSTAIRS .Subject is walking downstairs
        SITTING .Subject is sitting
        STANDING .Subject is standing
        LAYING .Subject is laying

**tBodyAcc-mean()-X** : num

    Mean of X component of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAcc-mean()-Y** : num

    Mean of Y component of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAcc-mean()-Z** : num

    Mean of Z component of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAcc-std()-X** : num

    Mean of the standart deviation of X component of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAcc-std()-Y** : num

    Mean of the standart deviation of X component of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAcc-std()-Z** : num

    Mean of the standart deviation of X component of body acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-mean()-X** : num

    Mean of X component of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-mean()-Y** : num

    Mean of X component of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-mean()-Z** : num

    Mean of X component of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-std()-X** : num

    Mean of standart deviation of X component of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-std()-Y** : num

    Mean of standart deviation of Y component of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAcc-std()-Z** : num

    Mean of standart deviation of Z component of gravity acceleration signal in the time domain (normalized to 1)
    
**tBodyAccJerk-mean()-X** : num

    Mean of the X component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyAccJerk-mean()-Y** : num

    Mean of the Y component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyAccJerk-mean()-Z** : num

    Mean of the Z component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyAccJerk-std()-X** : num

    Mean of the standart deviation of X component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyAccJerk-std()-Y** : num

    Mean of the standart deviation of Y component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyAccJerk-std()-Z** : num

    Mean of the standart deviation of Z component of the body linear acceleration that were derived in time to obtain Jerk signals (normalized to 1)
    
**tBodyGyro-mean()-X** : num

    Mean of the X component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyro-mean()-Y** : num

    Mean of the Y component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyro-mean()-Z** : num

    Mean of the Z component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyro-std()-X** : num
   
    Mean of the standart deviation X component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyro-std()-Y** : num

    Mean of the standart deviation Y component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyro-std()-Z** : num
 
    Mean of the standart deviation Z component of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyroJerk-mean()-X** : num

    Mean of the X component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerk-mean()-Y** : num

    Mean of the Y component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerk-mean()-Z** : num

    Mean of the Z component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerk-std()-X** : num

    Mean of the standart deviation of X component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerk-std()-Y** : num

    Mean of the standart deviation of Y component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerk-std()-Z** : num
 
    Mean of the standart deviation of Z component of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyAccMag-mean()** : num

    Mean of the magnitude of body acceleration signal in the time domain (normalized to 1)
    
**tBodyAccMag-std()** : num

    Mean of the standart deviation of the magnitude of body acceleration signal in the time domain (normalized to 1)
    
**tGravityAccMag-mean()** : num

    Mean of the magnitude of gravity acceleration signal in the time domain (normalized to 1)
    
**tGravityAccMag-std()** : num

    Mean of the standart deviation of the magnitude of gravity acceleration signal in the time domain (normalized to 1)
    
**tBodyAccJerkMag-mean()** : num

    Mean of the magnitude of the body linear acceleration that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyAccJerkMag-std()** : num

    Mean of the standart deviation of the magnitude of the body linear acceleration that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroMag-mean()** : num

    Mean of the magnitude of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyroMag-std()** : num

    Mean of the standart deviation of magnitude of the gyroscope signal in the time domain (normalized to 1)
    
**tBodyGyroJerkMag-mean()** : num

    Mean of the magnitude of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**tBodyGyroJerkMag-std()** : num

    Mean of the standart deviation of the magnitude of the angular velocity that were derived in time to obtain Jerk signals in the time domain (normalized to 1)
    
**fBodyAcc-mean()-X** : num

    Mean of X component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAcc-mean()-Y** : num

    Mean of Y component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAcc-mean()-Z** : num

    Mean of Z component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAcc-std()-X** : num

    Mean of the standart deviation of X component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAcc-std()-Y** : num

    Mean of the standart deviation of X component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAcc-std()-Z** : num

    Mean of the standart deviation of X component of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAccJerk-mean()-X** : num

    Mean of the X component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyAccJerk-mean()-Y** : num

    Mean of the Y component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyAccJerk-mean()-Z** : num

    Mean of the Z component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyAccJerk-std()-X** : num

    Mean of the standart deviation of X component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyAccJerk-std()-Y** : num

    Mean of the standart deviation of Y component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyAccJerk-std()-Z** : num

    Mean of the standart deviation of Z component of the body linear acceleration that were derived to obtain Jerk signals in frequency domain (normalized to 1)
    
**fBodyGyro-mean()-X** : num

    Mean of the X component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyGyro-mean()-Y** : num

    Mean of the Y component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyGyro-mean()-Z** : num

    Mean of the Z component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyGyro-std()-X** : num
   
    Mean of the standart deviation X component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyGyro-std()-Y** : num

    Mean of the standart deviation Y component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyGyro-std()-Z** : num
 
    Mean of the standart deviation Z component of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyAccMag-mean()** : num

    Mean of the magnitude of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAccMag-std()** : num

    Mean of the standart deviation of the magnitude of body acceleration signal in the frequency domain (normalized to 1)
    
**fBodyAccJerkMag-mean()** : num

    Mean of the magnitude of the body linear acceleration that were derived in time to obtain Jerk signals in the frequency domain (normalized to 1)
    
**fBodyAccJerkMag-std()** : num

    Mean of the standart deviation of the magnitude of the body linear acceleration that were derived in time to obtain Jerk signals in the fequency domain (normalized to 1)
    
**fBodyBodyGyroMag-mean()** : num

    Mean of the magnitude of the gyroscope signal in the frequency domain (normalized to 1)
    
**fBodyBodyGyroMag-std()** : num

    Mean of the standart deviation of magnitude of the gyroscope signal in the frequency domain (normalized to 1)

**fBodyBodyGyroJerkMag-mean()** : num

    Mean of the magnitude of the angular velocity that were derived in time to obtain Jerk signals in the frequency domain (normalized to 1)
    
**fBodyBodyGyroJerkMag-std()** : num

    Mean of the standart deviation of the magnitude of the angular velocity that were derived in time to obtain Jerk signals in the frequency domain (normalized to 1)
