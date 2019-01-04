# Code Book for Coursera's Getting and Cleaning Data Course Project

## Source Data
Project data is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Please note: downloading to local directory via link is not necessary with the source code.

Full description of data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Script Variables
_features_ contains data downloaded from features.txt

_activityLabels_ contains data downloaded from activity_labels.txt

_xTrain_ contains data downloaded from X_train.txt

_yTrain_ contains data downloaded from y_train.txt

_sTrain_ contains data downloaded from subject_train.txt

_xTest_ contains data downloaded from X_test.txt

_yTest_ contains data downloaded from y_test.txt

_sTest_ contains data downloaded from source_test.txt

_secondSet_ is written by R containing a table of the second independent tidy data
  of the average of each variable for each activity and each subject.
  
  
## Activity Labels
_These are possible activities being done in the data set:_
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

## Feature Vector Variable s
_These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions._
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

## Other Variables
_The set of variables that were estimated from these signals are:_
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

## Additional Vectors
_Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:_
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

### The complete list of variables of each feature vector is available in 'features.txt'_
