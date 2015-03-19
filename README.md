# Getting and Cleaning Data Course Project

## Raw Data

Raw data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and documented in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

It represent data on 30 subjects collected from the accelerometers from the Samsung Galaxy S smartphone, while each person performed one of the six activities.

The dataset is randomly partitioned into two sets - test and train.

## Analysis 

`run_analysis.R` is the file that can be run as long as the Samsung data is in your working directory (unzipped, in folder named `UCI HAR Dataset`).

### Processing

The main function in is `read.full.set`, it:

1. reads the 3 files: feature, activity, subject
2. for feature file it only keeps mean and sd columns, appropriately labelled
3. for activity file it translates it using the `activity_labels.txt`
4. it then merges the 3 sets into a single dataset

The main program performs the following steps

1. Loads activity names from `activity_labels.txt` and feature names from `features.txt`
2. Features names get substitutions, to simplify data frame naming in R: 
  * - is replaced with _
  * () are removed
3. `read.full.set` is called for test and train files
4. Merges results from test and train files into a single `clean.data` dataset
5. Creates a second, independent tidy data set with the average of each variable grouped by subject and activity

### Output

`tidy_data.txt` file is placed into working directory

### CodeBook

Please see [CodeBook.md](CodeBook.md) for details on processing.



