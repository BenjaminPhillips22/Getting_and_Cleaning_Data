
## Data

* The original data

    + http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

    + UCI HAR Dataset/features.txt
    + UCI HAR Dataset/activity_labels.txt

    + UCI HAR Dataset/train/X_train.txt
    + UCI HAR Dataset/train/y_train.txt
    + UCI HAR Dataset/train/subject_train.txt

    + UCI HAR Dataset/test/X_test.txt
    + UCI HAR Dataset/test/y_test.txt
    + UCI HAR Dataset/test/subject_test.txt


* Merges the training and the test sets to create one data set.
    + X_train.txt and X_test.txt

* Extracts only the measurements on the mean and standard deviation for each measurement.
    + from the merged data

* Uses descriptive activity names to name the activities in the data set
    + data named from the features.txt file
    + activities given by 1:6 renamed from the activity_labels.txt

* Appropriately labels the data set with descriptive variable names.
    + "^t" replaced with "time"
    + "^f" replaced with "frequency"

* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    + writen out to the tidy_data_set.txt file


## Variables

tidy_data_set.txt variables given below
 
* subject
* activity
* timeBodyAcc-mean()-X
* timeBodyAcc-mean()-Y
* timeBodyAcc-mean()-Z
* timeBodyAcc-std()-X
* timeBodyAcc-std()-Y
* timeBodyAcc-std()-Z
* timeGravityAcc-mean()-X
* timeGravityAcc-mean()-Y
* timeGravityAcc-mean()-Z
* timeGravityAcc-std()-X
* timeGravityAcc-std()-Y
* timeGravityAcc-std()-Z
* timeBodyAccJerk-mean()-X
* timeBodyAccJerk-mean()-Y
* timeBodyAccJerk-mean()-Z
* timeBodyAccJerk-std()-X
* timeBodyAccJerk-std()-Y
* timeBodyAccJerk-std()-Z
* timeBodyGyro-mean()-X
* timeBodyGyro-mean()-Y
* timeBodyGyro-mean()-Z
* timeBodyGyro-std()-X
* timeBodyGyro-std()-Y
* timeBodyGyro-std()-Z
* timeBodyGyroJerk-mean()-X
* timeBodyGyroJerk-mean()-Y
* timeBodyGyroJerk-mean()-Z
* timeBodyGyroJerk-std()-X
* timeBodyGyroJerk-std()-Y
* timeBodyGyroJerk-std()-Z
* timeBodyAccMag-mean()
* timeBodyAccMag-std()
* timeGravityAccMag-mean()
* timeGravityAccMag-std()
* timeBodyAccJerkMag-mean()
* timeBodyAccJerkMag-std()
* timeBodyGyroMag-mean()
* timeBodyGyroMag-std()
* timeBodyGyroJerkMag-mean()
* timeBodyGyroJerkMag-std()
* frequencyBodyAcc-mean()-X
* frequencyBodyAcc-mean()-Y
* frequencyBodyAcc-mean()-Z
* frequencyBodyAcc-std()-X
* frequencyBodyAcc-std()-Y
* frequencyBodyAcc-std()-Z
* frequencyBodyAcc-meanFreq()-X
* frequencyBodyAcc-meanFreq()-Y
* frequencyBodyAcc-meanFreq()-Z
* frequencyBodyAccJerk-mean()-X
* frequencyBodyAccJerk-mean()-Y
* frequencyBodyAccJerk-mean()-Z
* frequencyBodyAccJerk-std()-X
* frequencyBodyAccJerk-std()-Y
* frequencyBodyAccJerk-std()-Z
* frequencyBodyAccJerk-meanFreq()-X
* frequencyBodyAccJerk-meanFreq()-Y
* frequencyBodyAccJerk-meanFreq()-Z
* frequencyBodyGyro-mean()-X
* frequencyBodyGyro-mean()-Y
* frequencyBodyGyro-mean()-Z
* frequencyBodyGyro-std()-X
* frequencyBodyGyro-std()-Y
* frequencyBodyGyro-std()-Z
* frequencyBodyGyro-meanFreq()-X
* frequencyBodyGyro-meanFreq()-Y
* frequencyBodyGyro-meanFreq()-Z
* frequencyBodyAccMag-mean()
* frequencyBodyAccMag-std()
* frequencyBodyAccMag-meanFreq()
* frequencyBodyBodyAccJerkMag-mean()
* frequencyBodyBodyAccJerkMag-std()
* frequencyBodyBodyAccJerkMag-meanFreq()
* frequencyBodyBodyGyroMag-mean()
* frequencyBodyBodyGyroMag-std()
* frequencyBodyBodyGyroMag-meanFreq()
* frequencyBodyBodyGyroJerkMag-mean()
* frequencyBodyBodyGyroJerkMag-std()
* frequencyBodyBodyGyroJerkMag-meanFreq()
