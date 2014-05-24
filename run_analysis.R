
Analysis <- function(){
  ## Read in the features, select the ones we want and reformat them a bit
  features <- read.table("features.txt", header=F)
  features <- features[grepl("-mean\\(\\)|-std\\(\\)", features$V2),]
  features$V2 <- gsub("\\(\\)","",features$V2)
  
  ## Read in the activity labels to be used later
  labels <- read.table("activity_labels.txt", header=F, col.names=c("Activity","Activity Label")) 
  
  message("cleaning the test data...")
  ## Cleaning the test data
  test <- readLines("test/X_test.txt")
  test <- gsub("  ", " ", test)
  test <- gsub("^ ", "", test)
  writeLines(test,"test.txt")
  
  ## Read the test data back in and convert to data frame with meaningful feature labels
  require(data.table)
  test <- fread("test.txt", header=F, select=features$V1)
  test <- data.frame(test)
  names(test) <- as.character(features$V2)
  
  ## Add subject and activity columns to test data
  require(plyr)
  test$Subject <- readLines("test/subject_test.txt")
  test$Activity <- readLines("test/y_test.txt")
  test <- join(test,labels, by= "Activity")
  
  message("cleaning the train data...")
  ## Cleaning the train data
  train <- readLines("train/X_train.txt")
  train <- gsub("  ", " ", train)
  train <- gsub("^ ", "", train)
  writeLines(train,"train.txt")
    
  ## Read the train data back in and convert to data frame with meaningful feature labels
  train <- fread("train.txt", header=F, select=features$V1)
  train <- data.frame(train)
  names(train) <- as.character(features$V2)
    
  ## Add subject and activity columns to train data
  train$Subject <- readLines("train/subject_train.txt")
  train$Activity <- readLines("train/y_train.txt")
  train <- join(train,labels, by= "Activity")
  
  message("combining the test and train data together...")
  ## Rbind test and train data sets together
  all <- rbind(test,train)
  ## Find the average of each variable for each activity and each subject, remove NA columns
  message("computing the average for each variable by activity and subject...")
  final <- suppressWarnings(aggregate(all, by=list(Activity=all$Activity.Label, Subject=all$Subject), mean, length.warning=F))
  final <- final[,-c(69:71)]
  message("writing out the tidy data set to 'tidydata.txt'")
  write.csv(final, "tidydata.txt")
}


