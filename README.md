# getting-cleaning-data-project
## Overview
The code **run_analysis.R** is R code required for the course project. In short it does the following
 1. It will create a directory if it doesn't exist and then download the dataset from the given link and then unzip it.
 2. Then it will load the required datasets into R. In this case, **'x_train','y_train','subject_train','x_test','y_test','subject_test', 'feature'** and **'activity'** are loaded with the respective variable names.
 3. Then it merges the two datasets into one dataset and then select the columns which only corresponds to mean and standard deviation value for measurements.
 4. It merges the activity dataset with the filtered dataset matched by a activity ID.
 5. Then it changes the variable names with descriptive title for better understanding, like 'Acc= Accelerometer' etc.
 6. Lastly, it creates the second tidy dataset which consists the mean values for each variable per activity and per subject.
 7. And then it will save the final tidy dataset in a file called **second_tidy_dataset.txt**.
        *
