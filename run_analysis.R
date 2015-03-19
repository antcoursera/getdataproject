# Original data downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Cleaning up workspace
rm(list = ls())
# Loading dplyr
library(dplyr)

# Reads and process all files in directory matching the pattern
read.full.set <- function (directory, split.name, features.labels, activity.labels) {
    prefix <- paste(directory,"/",split.name,"/",sep="")
    suffix <- paste("_",split.name,".txt",sep="")
    # Feature file
    f <- tbl_df(read.table(paste(prefix,"X",suffix,sep=""),col.names=features.labels))  
    f <- f %>% select(contains(".mean.."), contains(".std.."))
    
    # Activity ID file
    a <- read.table(paste(prefix,"y",suffix,sep=""),col.names=c("Activity"))
    a$Activity <- factor(a$Activity, labels = activity.labels)
    a <- tbl_df(data.frame(a))
    
    # Subject ID file
    s <- tbl_df(read.table(paste(prefix,"subject",suffix,sep=""),col.names=c("Subject")))  
    
    # Now merge all files as columns 
    bind_cols(f,a,s)
}

# Directory where files are located
directory <- "UCI HAR Dataset"
# Loading descriptive activity names
activity.labels <- read.table(paste(directory,"activity_labels.txt",sep="/"),colClasses = "character")[,2]
# Loading features labels
features.labels <- read.table(paste(directory,"features.txt",sep="/"),colClasses = "character")[,2]

# Reading test & train data
test.data <- read.full.set(directory,"test",features.labels, activity.labels)
train.data <- read.full.set(directory,"train",features.labels, activity.labels)
# Combining test & train data
clean.data <- bind_rows(test.data,train.data)
# Clean up of temp data
rm(test.data)
rm(train.data)
rm(activity.labels)
# New data set with average of each variable for each activity and each subject
tidy.data <- clean.data %>% group_by(subject) %>% summarise_each(funs(mean))
write.table(tidy.data,"tidy_data.txt",row.name=FALSE)


