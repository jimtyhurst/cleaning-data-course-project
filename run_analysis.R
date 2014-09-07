#! /usr/bin/Rscript

# Written as an exercise for Coursera's Data Science Specialization course:
#    Getting and Cleaning Data
#    https://class.coursera.org/getdata-007

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.

# Usage:
# Run directly from the command line, which outputs on stdout:
# $ run_analysis.R
# -or-
# Run with R's batch command, which outputs to file run_analysis.Rout:
# $ R CMD BATCH run_analysis.R

print("Running analysis ...", quote=FALSE)

print("Completed analysis.", quote=FALSE)