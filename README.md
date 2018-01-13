# Getting-and-Cleaning-Data-Course-Project-Coursera
Final project for the 'Getting and Cleaning Data' course on Coursera

==================================================================

Modified Summary Data from Human Activity Recognition Using Smartphones Dataset
==================================================================

The modified version of the dataset includes:
======================================

‘README.md’ explains how the R script works and how all the files are connected

‘CodeBook.md’ is the code book that describes the variables and the cleaned up data in ‘tidy_data.txt’

‘run_analysis.R’ in the 'Working Files' folder is the script using the original dataset to produce the summary file ‘tidy_data.txt’

In addition, some of the original files are included and used in the script:
======================================

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


How the ‘run_analysis.R’ file work
======================================

The script and other original files should be placed in the main working directory. When the script is run, it will read all the original files as the inputs.
The end result is a new ‘tidy_data.txt’ file where it summarizes all the targeted variables by the subjects and activities

Description of the variables and measurements and the process how the original data is manipulated to produce the ’tidy_data.txt’ dataset can be found in the CodeBook.md file

About the original dataset
======================================

Below is the description of the original dataset by Smartlab - Non Linear Complex Systems Laboratory (www.smartlab.ws)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
