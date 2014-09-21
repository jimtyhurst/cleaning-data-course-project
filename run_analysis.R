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
# The data files are all in a 'data' directory of the current working directory, like this:
# data/README.txt
# data/activity_labels.txt
# data/features.txt
# data/features_info.txt
# data/test/Inertial Signals/
# data/test/X_test.txt
# data/test/subject_test.txt
# data/test/y_test.txt
# data/train/Inertial Signals/
# data/train/X_test.txt
# data/train/subject_test.txt
# data/train/y_test.txt

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
# Load Testing and Training tables.
x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")

print("Completed analysis.", quote=FALSE)