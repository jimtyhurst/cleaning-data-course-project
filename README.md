cleaning-data-course-project
============================

Written as an exercise for "Getting and Cleaning Data", a course in 
Johns Hopkins University's Data Science Specialization series offered 
through Coursera (https://class.coursera.org/getdata-007).

This script
-----------
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Writes the resulting data set to file "tidy-data.txt" in the current working directory.

Assumptions
-----------
The data files are all in a 'UCI HAR Dataset' sub-directory of the current working directory, like this:<br/>
UCI HAR Dataset/README.txt<br/>
UCI HAR Dataset/activity_labels.txt<br/>
UCI HAR Dataset/features.txt<br/>
UCI HAR Dataset/features_info.txt<br/>
UCI HAR Dataset/test/Inertial Signals/<br/>
UCI HAR Dataset/test/X_test.txt<br/>
UCI HAR Dataset/test/subject_test.txt<br/>
UCI HAR Dataset/test/y_test.txt<br/>
UCI HAR Dataset/train/Inertial Signals/<br/>
UCI HAR Dataset/train/X_test.txt<br/>
UCI HAR Dataset/train/subject_test.txt<br/>
UCI HAR Dataset/train/y_test.txt<br/>

Usage
-----
Run directly from the command line, which displays status on stdout:<br/>
$ ./run_analysis.R<br/>
-or-<br/>
Run with R's batch command, which routes stdout to file run_analysis.Rout:<br/>
$ r CMD BATCH run_analysis.R

Steps in the analysis
---------------------
(1) Load Testing and Training tables.
(2) Concatenate the rows of the Testing and Training tables.
(3) Use feature names as column names.
(4) Limit columns to -mean()- and -std()- variables.
(5) Use activity labels as column 1.
(6) Write the results to a file.

Acknowledgements
----------------
The data being analyzed is from:<br/>
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.<br/>
  Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.<br/>
  International Workshop of Ambient Assisted Living (IWAAL 2012).<br/>
  Vitoria-Gasteiz, Spain. Dec 2012<br/>
