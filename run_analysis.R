#! /usr/bin/Rscript

# Written as an exercise for Coursera's Data Science Specialization course:
#    Getting and Cleaning Data
#    https://class.coursera.org/getdata-007

# This script:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.

# Assumptions
# The data files are all in a 'UCI HAR Dataset' directory of the current working directory, like this:
# UCI HAR Dataset/README.txt
# UCI HAR Dataset/activity_labels.txt
# UCI HAR Dataset/features.txt
# UCI HAR Dataset/features_info.txt
# UCI HAR Dataset/test/Inertial Signals/
# UCI HAR Dataset/test/X_test.txt
# UCI HAR Dataset/test/subject_test.txt
# UCI HAR Dataset/test/y_test.txt
# UCI HAR Dataset/train/Inertial Signals/
# UCI HAR Dataset/train/X_test.txt
# UCI HAR Dataset/train/subject_test.txt
# UCI HAR Dataset/train/y_test.txt

# Usage:
# Run directly from the command line, which outputs on stdout:
# $ ./run_analysis.R
# -or-
# Run with R's batch command, which outputs to file run_analysis.Rout:
# $ r CMD BATCH run_analysis.R

# The data being analyzed is from:
# Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
#   Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
#   International Workshop of Ambient Assisted Living (IWAAL 2012).
#   Vitoria-Gasteiz, Spain. Dec 2012

print("Running analysis ...", quote=FALSE)
library(plyr)

# Load Testing and Training tables.
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# Concatenate the rows of the Testing and Training tables.
x_combined <- rbind(x_test, x_train);
y_combined <- rbind(y_test, y_train);

# Use feature names as column names.
features <- read.table("UCI HAR Dataset/features.txt")
colnames(x_combined) <- features[,2]

# Limit columns to -mean()- and -std()- variables.
analyzed_samples <- x_combined[,grep('(-mean\\(\\)-)|(-std\\(\\)-)',names(x_combined))]

# Use activity labels as column 1.
activity_factor <- factor(y_combined[,1])
activity <- revalue(activity_factor, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS", "4"="SITTING", "5"="STANDING", "6"="LAYING"))
labeled_samples <- cbind(activity, analyzed_samples)

# Save the results
write.table(labeled_samples, file="tidy-data.txt", row.names=FALSE)

print("Completed analysis.", quote=FALSE)
