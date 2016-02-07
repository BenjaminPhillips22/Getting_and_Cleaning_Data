

setwd("~/R/Hopkins_Data_Science_Specialization/Getting_and_Cleaning_Data")

# 1. merge training and test datasets.

trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
dataSet <- rbind(trainData,testData)

trainLabel <- read.table("UCI HAR Dataset/train/y_train.txt")
testLabel <- read.table("UCI HAR Dataset/test/y_test.txt")
labels <- rbind(trainLabel,testLabel)

trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(trainSubject,testSubject)

print(dim(trainData)) #7352 561
print(dim(trainLabel)) #7352 1
print(dim(trainSubject)) #7352 1

print(dim(testData)) #2947 561
print(dim(testLabel)) #2947 1
print(dim(testSubject)) #2947 1


# 2. Extract only the measurements on the mean and standard deviation for each measurement.

features <- read.table("UCI HAR Dataset/features.txt")
dim(features) #561 2, first col is 1:561
meanAndStdIndices <- grep("mean|std", features[, 2])
dataSet <- dataSet[,meanAndStdIndices]
names(dataSet) <- features[meanAndStdIndices,2]


# 3. Use descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
dim(activities) # 6 2, first col is 1:6
labels[,1] <- activities[labels[,1],2]
names(labels) <- "activity"
names(subjects) <- "subject"


# 4. Appropriately labels the data set with descriptive variable names.

#names(dataSet) <- features[meanAndStdIndices,2]
names(dataSet)<-gsub("^t", "time", names(dataSet))
names(dataSet)<-gsub("^f", "frequency", names(dataSet))


# 5. create a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

library(dplyr)
tidyDataSet <- cbind(subjects,labels,dataSet)
tidyDataSet <- tidyDataSet %>% group_by(subject,activity) %>% summarise_each(funs(mean(.,na.rm=TRUE)))
write.table(tidyDataSet, "tidy_data_set.txt", sep = ",",row.names = FALSE, quote = FALSE)

