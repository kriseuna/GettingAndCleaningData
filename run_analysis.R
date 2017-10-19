library(reshape2)

## Getting data

url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./UCI HAR Dataset.zip")
unzip("./UCI HAR Dataset.zip")

## 1. Merges the training and the test sets to create one data set

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X <- rbind(X_train, X_test)   # 10299 x 561

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)   # 10299 x 1


subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)   # 10299 x 1


## 2. Extracts only the measurements on the mean and standard deviation for each measurement

features <- read.table("./UCI HAR Dataset/features.txt")     # 561 x 2
meanStd_Index <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, meanStd_Index]      # 10299 x 66
names(X) <- gsub("\\(|\\)|-", "", features[meanStd_Index, 2])
names(X) <- gsub("mean", "Mean", names(X))
names(X) <- gsub("std", "Std", names(X))


## 3. Uses descriptive activity names to name the activities in the data set

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")   # 6 x 2
y[, 1] <- activity[y[, 1], 2]
names(y) <- "activity"


## 4. Appropriately labels the data set with descriptive variable names

names(subject) <- "subject"
allData <- cbind(subject, y, X)    # 10299 x 68



## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

meltData <- melt(allData, id = c("subject", "activity"))
avgData <- dcast(meltData, subject + activity ~ variable, mean)
write.table(avgData, file = "tidy_average.txt", quote = FALSE, row.names = FALSE)









