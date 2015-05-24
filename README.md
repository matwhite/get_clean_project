Project Description
===================

This project utilizes data generated from acceleration and gyroscope sensors
worn by a group of 30 subjects as they perform six discrete activities:
walking, walking upstairs, walking downstairs, sitting, standing, or laying.

Full information about the data is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The final data set is the average of all variables marked as being a "mean" or
"standard deviation" type of measurement, broken-down by each participant and
each activity they are engaged in.

How The Data Are Organized
--------------------------

The data source is a collection of text files from this archive: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

There are two sets of data: the training set and the test set. Each set of data
has a parallel file structure:

* Files beginning with "X_" are the data sets compiled out of the original
Inertial Signals data (in the corresponding directory for each data set). 

* Files beginning with "y_" are numbers corresponding to the activities being
performed by the subjects for each row.

* Flies beginning with "subject_" are numbers corresponding to the subjects who
are performing the activities for each row.

* The "y_" and "subject_" files can be thought of as additional columns to the
"X_" data sets.

Steps For Tidying The Data
--------------------------

1. The column positions for the "X_" files were found using the "features.txt" file.
2. The column names were mined for "mean" and "standard deviation" identifiers by using the following "grep" pattern: "[Mm]ean|std".
3. Only the desired columns were kept.
4. The column names are re-mapped to a more clear description (reference the codebook for more information).
5. The "X_" files data (testing and training summary data) first had the "y_" (activity) and "subject_" fields appended to them as new columns.
6. The testing and training data sets were merged together.
7. The "y_" (activity) codes were translated into readable variables using the data in the "activity_labels.txt" file, which is a map of the activity number to the activity name.
8. Each variable in the data are summarized into the mean by activity and subject.
9. A final tidy data set is built which takes only the summary data by activity and subject, with each activity and subject variable defined in its own column.

Column Re-Naming Convention
---------------------------

The columns were renamed to be more human-readable. For instance, certain
shorthand notations were lengthened based on the documentation that came with
the data set, while others were lengthened to make them less ambiguous:

**t:** Time  
**std:** Stdev  
**acc:** Accel  
**f:** Freq  
**mag:** Magni  

Camel case was used as it is a conventional way of presenting variable names.

Minus signs were replaced with underscores to prevent ambiguity.

Parenthesis were removed as extraneous.
