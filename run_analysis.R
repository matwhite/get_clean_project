# Load Needed Libraries
library(plyr)
library(reshape2)

# Clear All Variables In The Environment
rm(list=ls())

# Function For Merging and Manipulating The Testing and Training Data Sets
set_data <- function(name) {
    # Get Subjects
    subj <- read.table(
        paste(name, "/subject_", name, ".txt", sep=""),
        sep = "", header=FALSE, row.names=NULL, stringsAsFactors=FALSE
    )
    
    # Get Activities
    activities <- read.table(
        paste(name, "/y_", name, ".txt", sep=""),
        sep = "", header=FALSE, row.names=NULL, stringsAsFactors=FALSE
    )
    
    # Get Full Data Set
    ds <- read.table(
        paste(name, "/X_", name, ".txt", sep=""),
        sep = "", header=FALSE, row.names=NULL, stringsAsFactors=FALSE
    )

    # Define Subset Of Full Data Set Using Only Columns Desired
    sub_ds = ds[,cols]
    
    # Set Descriptive Column Names For Each Varaible
    names(sub_ds) = colnames

    # Add Extra Columns To Data Set, With Descriptive Variable Names
    sub_ds$Subject = sprintf("Subj%02d", subj[,1])
    sub_ds$Activity = activities[,1]
    
    return(sub_ds)
}

# Get Activity Types
acts = read.table(
    "activity_labels.txt", sep = "", header=FALSE,
    row.names = 1, stringsAsFactors=FALSE
)

# Get Data-Set Features
feats = read.table(
    "features.txt", sep = "", header=FALSE,
    stringsAsFactors=FALSE
)

# Get All Mean And Standard Deviation Columns
cols = feats[ grep("[Mm]ean|std", feats$V2), ][[1]]
oldnames = feats[ grep("[Mm]ean|std", feats$V2), ][[2]]

# Define Map Of Old Column Names To More Descriptive Column Names
colmap = data.frame(
    "old" = c(
        "tBodyAcc-mean()-X",
        "tBodyAcc-mean()-Y",
        "tBodyAcc-mean()-Z",
        "tBodyAcc-std()-X",
        "tBodyAcc-std()-Y",
        "tBodyAcc-std()-Z",
        "tGravityAcc-mean()-X",
        "tGravityAcc-mean()-Y",
        "tGravityAcc-mean()-Z",
        "tGravityAcc-std()-X",
        "tGravityAcc-std()-Y",
        "tGravityAcc-std()-Z",
        "tBodyAccJerk-mean()-X",
        "tBodyAccJerk-mean()-Y",
        "tBodyAccJerk-mean()-Z",
        "tBodyAccJerk-std()-X",
        "tBodyAccJerk-std()-Y",
        "tBodyAccJerk-std()-Z",
        "tBodyGyro-mean()-X",
        "tBodyGyro-mean()-Y",
        "tBodyGyro-mean()-Z",
        "tBodyGyro-std()-X",
        "tBodyGyro-std()-Y",
        "tBodyGyro-std()-Z",
        "tBodyGyroJerk-mean()-X",
        "tBodyGyroJerk-mean()-Y",
        "tBodyGyroJerk-mean()-Z",
        "tBodyGyroJerk-std()-X",
        "tBodyGyroJerk-std()-Y",
        "tBodyGyroJerk-std()-Z",
        "tBodyAccMag-mean()",
        "tBodyAccMag-std()",
        "tGravityAccMag-mean()",
        "tGravityAccMag-std()",
        "tBodyAccJerkMag-mean()",
        "tBodyAccJerkMag-std()",
        "tBodyGyroMag-mean()",
        "tBodyGyroMag-std()",
        "tBodyGyroJerkMag-mean()",
        "tBodyGyroJerkMag-std()",
        "fBodyAcc-mean()-X",
        "fBodyAcc-mean()-Y",
        "fBodyAcc-mean()-Z",
        "fBodyAcc-std()-X",
        "fBodyAcc-std()-Y",
        "fBodyAcc-std()-Z",
        "fBodyAcc-meanFreq()-X",
        "fBodyAcc-meanFreq()-Y",
        "fBodyAcc-meanFreq()-Z",
        "fBodyAccJerk-mean()-X",
        "fBodyAccJerk-mean()-Y",
        "fBodyAccJerk-mean()-Z",
        "fBodyAccJerk-std()-X",
        "fBodyAccJerk-std()-Y",
        "fBodyAccJerk-std()-Z",
        "fBodyAccJerk-meanFreq()-X",
        "fBodyAccJerk-meanFreq()-Y",
        "fBodyAccJerk-meanFreq()-Z",
        "fBodyGyro-mean()-X",
        "fBodyGyro-mean()-Y",
        "fBodyGyro-mean()-Z",
        "fBodyGyro-std()-X",
        "fBodyGyro-std()-Y",
        "fBodyGyro-std()-Z",
        "fBodyGyro-meanFreq()-X",
        "fBodyGyro-meanFreq()-Y",
        "fBodyGyro-meanFreq()-Z",
        "fBodyAccMag-mean()",
        "fBodyAccMag-std()",
        "fBodyAccMag-meanFreq()",
        "fBodyBodyAccJerkMag-mean()",
        "fBodyBodyAccJerkMag-std()",
        "fBodyBodyAccJerkMag-meanFreq()",
        "fBodyBodyGyroMag-mean()",
        "fBodyBodyGyroMag-std()",
        "fBodyBodyGyroMag-meanFreq()",
        "fBodyBodyGyroJerkMag-mean()",
        "fBodyBodyGyroJerkMag-std()",
        "fBodyBodyGyroJerkMag-meanFreq()",
        "angle(tBodyAccMean,gravity)",
        "angle(tBodyAccJerkMean),gravityMean)",
        "angle(tBodyGyroMean,gravityMean)",
        "angle(tBodyGyroJerkMean,gravityMean)",
        "angle(X,gravityMean)",
        "angle(Y,gravityMean)",
        "angle(Z,gravityMean)"
    ),
    "new" = c(
        "TimeBodyAccelMean_X",
        "TimeBodyAccelMean_Y",
        "TimeBodyAccelMean_Z",
        "TimeBodyAccelStdev_X",
        "TimeBodyAccelStdev_Y",
        "TimeBodyAccelStdev_Z",
        "TimeGravityAccelMean_X",
        "TimeGravityAccelMean_Y",
        "TimeGravityAccelMean_Z",
        "TimeGravityAccelStdev_X",
        "TimeGravityAccelStdev_Y",
        "TimeGravityAccelStdev_Z",
        "TimeBodyAccelJerkMean_X",
        "TimeBodyAccelJerkMean_Y",
        "TimeBodyAccelJerkMean_Z",
        "TimeBodyAccelJerkStdev_X",
        "TimeBodyAccelJerkStdev_Y",
        "TimeBodyAccelJerkStdev_Z",
        "TimeBodyGyroMean_X",
        "TimeBodyGyroMean_Y",
        "TimeBodyGyroMean_Z",
        "TimeBodyGyroStdev_X",
        "TimeBodyGyroStdev_Y",
        "TimeBodyGyroStdev_Z",
        "TimeBodyGryoJerkMean_X",
        "TimeBodyGryoJerkMean_Y",
        "TimeBodyGryoJerkMean_Z",
        "TimeBodyGryoJerkStdev_X",
        "TimeBodyGryoJerkStdev_Y",
        "TimeBodyGryoJerkStdev_Z",
        "TimeBodyAccelMagniMean",
        "TimeBodyAccelMagniStdev",
        "TimeGravityAccelMagniMean",
        "TimeGravityAccelMagniStdev",
        "TimeBodyAccelJerkMagniMean",
        "TimeBodyAccelJerkMagniStdev",
        "TimeBodyGyroMagniMean",
        "TimeBodyGyroMagniStdev",
        "TimeBodyGyroJerkMagniMean",
        "TimeBodyGryoJerkMagniStdev",
        "FreqBodyAccelMean_X",
        "FreqBodyAccelMean_Y",
        "FreqBodyAccelMean_Z",
        "FreqBodyAccelStdev_X",
        "FreqBodyAccelStdev_Y",
        "FreqBodyAccelStdev_Z",
        "FreqBodyAccelMeanFreq_X",
        "FreqBodyAccelMeanFreq_Y",
        "FreqBodyAccelMeanFreq_Z",
        "FreqBodyJerkMean_X",
        "FreqBodyJerkMean_Y",
        "FreqBodyJerkMean_Z",
        "FreqBodyJerkStev_X",
        "FreqBodyJerkStev_Y",
        "FreqBodyJerkStev_Z",
        "FreqBodyAccelJerkMeanFreq_X",
        "FreqBodyAccelJerkMeanFreq_Y",
        "FreqBodyAccelJerkMeanFreq_Z",
        "FreqBodyGyroMean_X",
        "FreqBodyGyroMean_Y",
        "FreqBodyGyroMean_Z",
        "FreqBodyGryoStdev_X",
        "FreqBodyGryoStdev_Y",
        "FreqBodyGryoStdev_Z",
        "FreqBodyGryoMeanFreq_X",
        "FreqBodyGryoMeanFreq_Y",
        "FreqBodyGryoMeanFreq_Z",
        "FreqBodyAccelMagniMean",
        "FreqBodyAccelMagniStdev",
        "FreqBodyAccelMagniMeanFreq",
        "FreqBodyAccelJerkMangiMean",
        "FreqBodyAccelJerkMangiStdev",
        "FreqBodyAccelJerkMangiMeanFreq",
        "FreqBodyGyroMagniMean",
        "FreqBodyGyroMagniStdev",
        "FreqBodyGyroMagniMeanFreq",
        "FreqBodyGyroJerkMagniMean",
        "FreqBodyGyroJerkMagniStdev",
        "FreqBodyGyroJerkMagniMeanFreq",
        "AngleTimeBodyAccelMeanGravity",
        "AngleTimeBodyAccelJerkMeanGravityMean",
        "AngleTimeBodyGyroMeanGravityMean",
        "AngleTimeBodyGyroJerkMeanGravityMean",
        "AngleGravityMean_X",
        "AngleGravityMean_Y",
        "AngleGravityMean_Z"
    ),
    stringsAsFactors=FALSE
)

# From The List Of Old Column Names, Define The New Columns
colnames = c()
for (cn in oldnames) {
    # Ensure That If A New Column Name Is Not Found
    # That We Keep The Original Column Name
    lookup = colmap[colmap$old == cn, "new"]
    if (length(lookup) == 0) {
        lookup = cn
    }
    colnames = rbind(colnames, lookup)
}

# Get Combined Data Set
merged = set_data("test")
merged = rbind(merged, set_data("train"))

# Make Activity Column More Descriptive
merged[,"Activity"] = acts[merged[,"Activity"],]

# Prepare A Summary Data Frame By Populating The Activities And Subjects
# Remove and Rename Columns To Accomodate A Descriptive Data Set
t = dcast(merged, Activity ~ Subject,length,value.var = "Activity")
summ = melt(t,id=c("Activity"))
names(summ)[names(summ) == "variable"] = "Subject"
summ$value = NULL

for (cn in names(merged)) {
    if (cn == "Subject" || cn == "Activity") {
        next
    }

    # Summarize The Variable Into A Mean By Activity and Subject
    t = dcast(merged, Activity ~ Subject,mean,value.var = cn,na.exclude=TRUE)
    rownames(t) = t$Activity

    # Now Extract The Summarized Data An Populate The Summary Data Set With It
    for (s in grep("^Subj[0-9]", sort(names(t)), value=TRUE)) {
        for (a in sort(t$Activity)) {
            summ[summ$Activity == a & summ$Subject == s, sprintf("Mean%s",cn)] = t[t$Activity == a, s]
        }
    }
}

# Write The Output Of The Summarized Data Set To A File
write.table(summ, "step5.txt", row.name=FALSE)