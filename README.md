The script provided here is to obtain clean and tidy data set with some aggregates based on the data obtained from the following URL:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script expects "UCI HAR Dataset" folder along with its subfolders and files in the same working directory from where the script is run.

The data set contains data collected from the accelerometers from the Samsung Galaxy S smartphone.

The input for the script is raw data. There are no additional parameters required for the script. The output is a tidy data set.

The following steps are performed in the script:
1. Reads both the training and test data sets and merge them. 
2. Extract only the measurements on the mean and standard deviation.
3. Use descriptive activity names (one of the tidy data principles)
4. Labels the data set with descriptive names.
5. Extract an independent tidy data set with the average of each variable for each activity and each subject.
6. Write this tidy data set into a file.

Detailed comments are provided in the script itself.

A code book can be found along with this ReadMe that explains in detail about the variables, units etc