Code Book
========================================================

The tidy data set consists of the merged data from `X_tran.txt` and `X_test.txt`. It has 180 rows and 68 columns.

The description of all the columns follows:

1: `subject_id` - Identification of the subjects performing the activities, originally present in separate files `subject_train.txt` and `subject_test.txt`. Each subject performed all the activities. 

2: `activity` - The labelled activity that the subject was performing. It can have one of the following values: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, and `LAYING`. The activities (their IDs) were originally in separate files `y_train.txt` and `y_test.txt`. The mapping between the IDs and the names of the activities was in the file `activity_labels.txt`. There is one row with each activity for each subject.

3-68: These columns contain *averaged* values of measurements from the columns 1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 294:296, 345:350, 424:429, 452:454, 503, 504, 516, 517, 529, 530, 542, 543, 563 of the original data set. These columns (of the original data set) concerned the mean and standard deviation of the measurements. The average is computed for each `(subject_id, activity)` pair. The names of the columns are assgined based on the file `features.txt`.