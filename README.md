Samsung Assignment for Getting and Cleaning Data course
-------------------------------------------------------

The run_analysis file contains one function which reads in the test and train data, gives each dataset meaningful feature labels and extracts only the columns with mean and standard deviation measurements. It adds the subject and activity columns to the test and train datasets, from which it also assigns a meaningful activity label variable derived from the activity numeric code. Finally, the two datasets are merged together and the average of each numeric variable is computed for each activity and subject. 

To run this function, 

1.  download the raw datasets from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
2.  unzip the files and have them in your working directory in RStudio. 
3.  open the run_analysis file in RStudio. Source the file and then 
4.  run Analysis()

The final output will be a file called 'tidydata.txt' which contains the summarized data for each subject within each activity. 







