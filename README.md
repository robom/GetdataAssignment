Getting and Cleaning Data: Course Project
========================================================

This repository contains script `run_analysis.R` that processes the input data from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It performs basic cleaning of the data set, namely:

1. It merges the training and the test sets to create one data set.
2. It extracts only the measurements on the mean and standard deviation for each measurement. 
3. It uses descriptive activity names to name the activities in the data set.
4. It appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The code assumes that all the initial files are present in the working directory, namely:

* `activity_labels.txt`
* `features.txt`
* `subject_test.txt`
* `subject_train.txt`
* `X_test.txt`
* `X_train.txt`
* `y_test.txt`
* `y_train.txt`

The tidy data set is saved in the working direcotry into file `tidy_dataset.txt`. The columns of the tidy data set are described in more detail in `CodeBook.md`.

