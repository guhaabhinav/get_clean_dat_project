library(dplyr)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI_dat_actRec.zip")
unzip("UCI_dat_actRec.zip")


# load train and test datasets (including subject labels and activity labels)
train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")


test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")

# merging the datasets into single dataframe 
# "1.Merges the training and the test sets to create one data set."

train <- cbind(train_subject, train_label, train_set)
test <- cbind(test_subject, test_label, test_set)
single_dataset <- rbind(train, test)


# "2.Extracts only the measurements on the mean and standard deviation for each measurement."

var_names <- read.table("./UCI HAR Dataset/features.txt")
colnames(single_dataset) <- c("subject","activity",as.character(var_names[,2]))
colnums <- grep("subject|activity|mean|Mean|std",colnames(single_dataset))
dat_mean_std <- single_dataset[,colnums]

# "3.Uses descriptive activity names to name the activities in the data set."
# "4.Appropriately labels the data set with descriptive variable names."

activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
dat_mean_std$activity <- plyr::mapvalues(dat_mean_std$activity, c(1,2,3,4,5,6), as.character(activity_labels[,2]))
colnames(dat_mean_std) <- gsub('^t',"time.",colnames(dat_mean_std))
colnames(dat_mean_std) <- gsub('^f',"frequency.",colnames(dat_mean_std))


# "5.From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject."

dat_mean_std$subject <- as.factor(dat_mean_std$subject)
dat_mean_std$activity <- as.factor(dat_mean_std$activity)

dat_tidy <- aggregate(. ~subject + activity, dat_mean_std, mean)
dat_tidy <- dat_tidy[order(dat_tidy$subject, dat_tidy$activity),]

write.table(dat_tidy, "tidyData.txt", row.name=FALSE)




