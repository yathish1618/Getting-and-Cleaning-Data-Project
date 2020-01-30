#This script reads the data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and outputs a tidy data set with means grouped by activity and subject
#Note that the script looks for "UCI HAR Dataset" folder and the subsequent file/folder structure in the current working directory
#The file paths have been constructed in a platform independent way

#1. Read and Merge data

if (!file.exists("UCI HAR Dataset")) { 
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
  unzip(filename) 
}

#Read training data, labels identifying subjects and activities
#Read Activity and Subjects as factors for convenience

trainData <- read.table(file.path("UCI HAR Dataset","train","X_train.txt"))
trainSubjects <- read.table(file.path("UCI HAR Dataset","train","subject_train.txt"),colClasses = c("factor"),col.names = c("Subject"))
trainActivity <- read.table(file.path("UCI HAR Dataset","train","y_train.txt"),colClasses = c("factor"),col.names = c("Activity"))

#Append the subject and activity identifiers to training data

trainTidyData <- cbind(trainData,trainSubjects,trainActivity)

#Read test data, labels identifying subjects and activities
#Read Activity and Subjects as factors for convenience

testData <- read.table(file.path("UCI HAR Dataset","test","X_test.txt"))
testSubjects <- read.table(file.path("UCI HAR Dataset","test","subject_test.txt"),colClasses = c("factor"), col.names = c("Subject"))
testActivity <- read.table(file.path("UCI HAR Dataset","test","y_test.txt"),colClasses = c("factor"),col.names = c("Activity"))

#Append the subject and activity identifiers to test data

testTidyData <- cbind(testData,testSubjects,testActivity)

#Merge training and test data by appending test data at the bottom of training data and store it in a new variable
fullData <- rbind(trainTidyData,testTidyData)



#2. Extract only the measurements on the mean and standard deviation



#Read the file containing column names of the data sets

features <- read.table(file.path("UCI HAR Dataset","features.txt"))

#Identify the indices of all those columns that are either means or standard deviations
#Note that meanFreq() and angle related means are not considered mean for the purpose of this project.

indices <- grep("mean\\(\\)|std\\(\\)",features$V2)

#Subset merged data set to retain only the columns containing means or standard deviations identified above

subData <- fullData[,c(indices,562,563)]



#3. Use descriptive activity names



#Read descriptive activity labels and assign them to Activity column

activityLabels <- read.table(file.path("UCI HAR Dataset","activity_labels.txt"))
levels(subData[,"Activity"]) <- activityLabels[,2]



#4. Labels the data set with descriptive names.



#Extract the original names of the column names

cols <- as.character(features[indices,2])

#Rename t, f, Acc, Gyro, Mag as Time, Frequency, Accelerometer, Gyroscope and Magnitude respectively
cols <- gsub("^t",cols,replacement = "Time")
cols <- gsub("^f",cols,replacement = "Frequency")
cols <- gsub("Acc",cols,replacement = "Accelerometer")
cols <- gsub("Gyro",cols,replacement = "Gyroscope")
cols <- gsub("Mag",cols,replacement = "Magnitude")
cols <- gsub("-mean\\(\\)-?",cols,replacement = "Mean")
cols <- gsub("-std\\(\\)-?",cols,replacement = "StandardDeviation")

#Assign the descriptive names to the columns of data set

names(subData) <- c(cols,"Subject","Activity")



#5.Independent tidy data set with the average of each variable for each activity and each subject.



#Calculate average of each variable grouped by each activity and each subject

tidyData <- aggregate(subData[,-c(67,68)],by=list(subData$Activity,subData$Subject), mean)

#Add descriptive names to first two columns and retain the names of the rest

names(tidyData) <- c("Activity","Subject",names(tidyData)[3:68])

#Order the data first by Activity and then by Subject

tidyData <- tidyData[order(tidyData$Activity,as.numeric(as.character(tidyData$Subject))),]

#Write this tidy data set as final output

write.table(tidyData,"tidyData.txt",row.names = FALSE)