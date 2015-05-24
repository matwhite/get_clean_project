Project Description
=====================

This project utilizes data generated from acceleration and gyroscope sensors
worn by a group of 30 subjects as they perform six discrete activities:
walking, walking upstairs, walking downstairs, sitting, standing, or laying.

The final data set is the average of all variables marked as being a "mean" or
"standard deviation" type of measurement, broken-down by each participant and
each activity they are engaged in.

How The Data Are Organized
--------------------------

The data source is a collection of text files from this archive: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

There are two sets of data: the training set and the test set. Each set of data
has a parallel file structure.

Files beginning with "X_" are the data sets compiled out of the original
Inertial Signals data (in the corresponding directory for each data set). 

Files beginning with "y_" are numbers corresponding to the activities being
performed by the subjects.

Flies beginning with "subject_" are numbers corresponding to the subjects who
are performing the activities.

The "y_" and "subject_" files can be thought of as additional columns to the
"X_" data sets.

Steps For Tidying The Data
--------------------------

1. The "X_" files data (testing and training summary data) first had the "y_" (activity) and "subject_" fields appended to them.
2. The "y_" (activity) codes were translated into readable variables using the
data in the "activity_labels.txt" file, which is a map of the activity number to
the activity name.
3. The testing and training data sets were merged together.
4. The column names for the "X_" files were assigned using the "features.txt" file.
5. The column names were mined for "mean" and "standard deviation" identifiers by using the following "grep" pattern: "[Mm]ean|std".
6. Only the desired columns are kept.
7. The column names are re-mapped to a more clear and tidy description (reference the codebook for more information).
8. Each variable in the data are summarized into the mean by activity and subject.
9. A final tidy data set is built which takes only the summary data by activity and subject, with each activity and subject defined in its own column.

Column Re-Naming Convention
---------------------------

The columns were renamed to be more human-readable. For instance, Certain shorthand notations were lengthened based on the documentation that came with the data set:

t: Time  
std: Stdev  
acc: Accel  
f: Freq  
mag: Magni  

Camel case was used as it is a highly conventional way of presenting variable names.

Minus signs were replaced with underscores to prevent ambiguity.

Parenthesis were removed as extraneous.
