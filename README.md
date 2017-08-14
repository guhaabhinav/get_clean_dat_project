# get_clean_dat_project
getting and cleaning data - project (coursera assignment)

This is the project submission for the “Getting and Cleaning Data” course on courser data science specialization. The upload consists of an R script (run_analysis.R) for fulfilling the assignment requirements. It accomplishes this by:
1.	Loading up the necessary data files for the Samsung sensor data
a.	Downloads the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
b.	Unzips the package and loads 3 files for each (train and test sets); namely: train set, subject data, activity labels "./UCI HAR Dataset/train/X_train.txt", "./UCI HAR Dataset/train/subject_train.txt", "./UCI HAR Dataset/train/y_train.txt". Similarly for the test set folder.
2.	Merges the train and test sets (along with the subject, and activity columns).
3.	Subsets out the mean and std (standard deviation).
4.	Loads the activity labels file (1 - WALKING, 2 - WALKING_UPSTAIR, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 – LAYING), and assigns the labels to their corresponding integer labels as character (using “mapvalues” function in the plyr package).
5.	 Assigns descriptive variable names (using gsub, “^t” relabeled to “time”, and “^f” to “frequency”).
6.	Creates a separate tidy dataset with each subject’s activity average measurements and saves to “tidyData.txt”.
