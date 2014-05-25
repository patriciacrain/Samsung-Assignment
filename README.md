Samsung Assignment for Getting and Cleaning Data course
-------------------------------------------------------

### Summary and Instructions

The run_analysis.R file contains one function which reads in the test and train data, gives each dataset meaningful variable labels and extracts only the columns with mean and standard deviation measurements. It adds the subject and activity columns to the test and train datasets, from which it also assigns a meaningful activity label variable derived from the numeric activity code. Finally, the two datasets are merged together and the average of each numeric variable is computed for each combonation of activity and subject. 

To run this function, 

1.  download the raw datasets from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
2.  unzip the files and have them in your working directory in RStudio. 
3.  open the run_analysis file in RStudio. Source the file and then 
4.  run Analysis()

The final output will be a file called 'HARdata_tidy.txt' which contains the summarized data for each subject within each activity. For more info about this file please reference CodeBook.md.

### Detailed Explanation of Process

The function contained within run_analysis.R takes the raw datasets from the UCI Human Activity Regonition data and combines them into a summarized, tidy dataset.

Only some of the files in the original dataset are used in this script (the Inertial Signals files are ignored completely). The following is a list of the files used in this script with brief descriptions:

- 'features.txt': List of all features/variables.
- 'activity_labels.txt': Links the numeric activity code with the activity name.
- 'train/X_train.txt': Training data.
- 'train/y_train.txt': Training numeric activity code.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity.
- 'test/X_test.txt': Test data.
- 'test/y_test.txt': Test numeric activity code.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity.

The steps taken in the script to combine the above 8 files into 1 tidy dataset are as follows:

### Step One

Read in the 'features.txt' file. There are 561 variables in the original list. Extract only the variables which contain the words 'mean' or 'std' as per the assignment directions, 66 variables. Reformat the variables to remove parentheses and replace dashes with periods. 

Read in the 'activity_labels.txt' so that it can be used later.

### Step Two

Read in the test data ('test/X_test.txt') with readLines and replace double spaces with single spaces and then write it back out again. (This is done so that the fread function will successfully read in the data.) Read in the data with fread, selecting only the variables which were selected in Step One. Assign headers to the data using the variable list from Step One.  

Repeat for the train data ('train/X_train.txt').

### Step Three

Read in the test subject data ('test/subject_test.txt') and add it as a column to the test dataframe, giving it a meaningful variable name. Read in the activity data ('test/y_test.txt'), giving it a meaningul variable name. Join the activity labels object created in Step One with the test data to create a new variable which gives the activity name for each row in addition to the numeric activity code. 

Repeat for the train data ('train/subject_train.txt' and 'train/y_train.txt' respectively).

### Step Four

Now both the test and train dataframe contain all the correct variables (columns), 69 each. The test data has 2947 observations (rows) and the train data has 7352. Rbind the two datasets together to create one large data set with 69 variables and 10299 observations. 

### Step Five

Using the aggregate function, find the average (mean) of all the numeric variables by Activity and Subject. Remove 2 NA columns created by aggregate. Amend the variable names to include "-Avg" at the end of each.

### Step Six

Using write.csv, write out the tidy dataset to 'HARdata_tidy.txt'




Assignment for Getting and Cleaning Data course
