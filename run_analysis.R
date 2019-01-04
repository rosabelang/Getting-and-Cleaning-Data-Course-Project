rm(list = ls())

filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

features <- read.table('./UCI HAR Dataset/features.txt')
activityLabels = read.table('./UCI HAR Dataset/activity_labels.txt')

xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
sTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
sTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

colnames(activityLabels) <- c('activityID','activityType')

colnames(xTrain) <- features[,2] 
colnames(yTrain) <-"activityID"
colnames(sTrain) <- "subjectID"

colnames(xTest) <- features[,2] 
colnames(yTest) <- "activityID"
colnames(sTest) <- "subjectID"

mergeTrain <- cbind(yTrain, sTrain, xTrain)
mergeTest <- cbind(yTest, sTest, xTest)
setAllInOne <- rbind(mergeTrain, mergeTest)

colNames <- colnames(setAllInOne)

meanStdDev <- (grepl("activityID" , colNames) | grepl("subjectID" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames) )

setForMeanAndStdDev <- setAllInOne[ , meanStdDev == TRUE]

setWithActivityNames <- merge(setForMeanAndStdDev, activityLabels, by='activityID', all.x=TRUE)

secondSet <- aggregate(. ~subjectID + activityID, setWithActivityNames, mean)
secondSet <- secondSet[order(secondSet$subjectID, secondSet$activityID),]

write.table(secondSet, "secondSet.txt", row.name=FALSE)
