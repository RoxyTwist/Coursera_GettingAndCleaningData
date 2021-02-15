
# Assignment: Getting and Cleaning Data Course Project


#### Download the data

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipData <- "UCI HAR Dataset.zip"

if (!file.exists(zipData)) {
    download.file(Url, zipData, mode = "wb")
}

# unzip zip file containing data 
dPath <- "UCI HAR Dataset"
if (!file.exists(dPath)) {
    unzip(zipData)
}


library(dplyr)

## Read the data
features <- read.table(file.path(dPath, "features.txt"))
    ### rename the columns
        features <- features %>% 
            rename(MesureID=V1, Measure=V2)

activity <- read.table(file.path(dPath, "activity_labels.txt"))
    ### rename the columns
        activity <- activity %>% 
            rename(activityID=V1, activity=V2)

###Training
training_subject <- read.table(file.path(dPath, "train", "subject_train.txt"))
names(training_subject) <- "subject"

training_values <- read.table(file.path(dPath, "train", "X_train.txt"))
names(training_values) <- features$Measure

training_labels <- read.table(file.path(dPath, "train", "y_train.txt"))
names(training_labels) <- "activityID"

###Test
test_subject <- read.table(file.path(dPath, "test", "subject_test.txt"))
names(test_subject) <- "subject"

test_values <- read.table(file.path(dPath, "test", "X_test.txt"))
names(test_values) <- features$Measure

test_labels <- read.table(file.path(dPath, "test", "y_test.txt"))
names(test_labels) <- "activityID"

# Step1: Merges the training and the test sets to create one data set.

training <- cbind(training_subject, training_labels,training_values)
test <- cbind(test_subject, test_labels, test_values)

AllData <- rbind(training, test)

rm(training_subject, training_labels,training_values,test_subject, test_labels, test_values)

# Step2: Extracts only the measurements on the mean and standard deviation for each measurement. 

colToKeep <- grep("subject|activity|.*mean.*|.*std.*", colnames(AllData), ignore.case = T)
Data_clean <- AllData[,colToKeep]

colTodisc <- grep(".*angle", colnames(Data_clean), ignore.case = T)

colTodisc

Data_clean <- Data_clean[,-c(82:88)]
# Step3: Uses descriptive activity names to name the activities in the data set

Data_clean <- Data_clean %>% 
    mutate(activityID, activity=factor(activityID, levels = activity$activityID, labels = activity$activity))
Data_clean <- Data_clean[,c(1,82, 3:81)]

# Step4: Appropriately labels the data set with descriptive variable names. 
names(Data_clean) <- gsub("[\\(\\)-]", "", names(Data_clean))
names(Data_clean) <- gsub("^f", "Frequency", names(Data_clean))
names(Data_clean) <- gsub("^t", "Time", names(Data_clean))
names(Data_clean) <- gsub("Acc", "Accelerometer", names(Data_clean))
names(Data_clean) <- gsub("Gyro", "Gyroscope", names(Data_clean))
names(Data_clean) <- gsub("Mag", "Magnitude", names(Data_clean))
names(Data_clean) <- gsub("mean", "Mean", names(Data_clean))
names(Data_clean) <- gsub("std", "STD", names(Data_clean))
names(Data_clean) <- gsub("angle", "Angle", names(Data_clean))
names(Data_clean) <- gsub("gravity", "Gravity", names(Data_clean))
names(Data_clean) <- gsub("BodyBody", "Body", names(Data_clean))


# Step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Data_tidy <- Data_clean %>% 
    group_by(subject, activity) %>% 
    summarise_each(funs(mean))

# output file 

write.table(Data_tidy, "data_tidy.txt", row.names = FALSE, 
            quote = FALSE)






