This is the Getting and Cleaning Data course project. The repository contains the R code and documentation files of the project.

Files
=======

`CodeBook.md` : describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` : code to download the data set and perform on it by the following instructions:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

`tidy_average.txt` : the final resulting tidy data.


Usage
=======

- Launch RStudio and use command `setwd()` to choose the working directory.
- The code relies on R `reshape2` package, if you does not have it, install it by using `install.packages("reshape2")`.
- Put the code file `run_analysis.R` into the working direcory and execute `source("run_analysis.R")`.
- Now you'll find in the working directory the resulting file `tidy_average.txt` created.
