Data processing process
==============================

Part 1. Merges the training and the test sets to create one data set
- Select the files that are relevant to the project
- Combine the features train and test set

Part 2. Extracts only the measurements on the mean and standard deviation for each measurement
- Get the labels from features.txt file, keeping the number as the index
- Filter the columns name that include ‘mean()’ and ’std()’. As I understand it, the meanFrequency() should not be include,
because we cannot find a corresponding stdFrequency()

Part 3. Use descriptive activity names to name the activities in the data set
- Union the class label train and test file
- Join with activity_labels. txt file to name each activity by its class labels

Part 4. Combine the data with the subject column
- Union the subject train and test column files
- Combine the data with the subject column

Part 5. Group the data by subject and activity then summarize with average of each variable
- Using 'group_by' and 'summarize_all' functions from dplyr package
- Writing the result to file

'tidy_data.txt' variable descriptions
=================================

The modified dataset includes 10299 observations of 68 variables.

subject - first variable indicates the subject number (from 1-30)
activity - second variable indicates the activity performed (6 different activities)

The rest of the variables are 66 mean values of the feature vectors (which only include mean() and std() value).
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag
