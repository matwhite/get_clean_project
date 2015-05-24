Codebook For Human Activity Recognition
=======================================

This is the codebook describing the variables used in the output of the Getting
and Cleaning Data course project concerning Human Activity Recognition.

Full documentation about these data is available at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data set is here
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Field Descriptions
------------------

*Activity*
The activity the subject is engaged in

*Subject*
The person who is engaged in the activity

The remaining columns have been tidied by taking the mean of the measurements taken for each activity and subject for columns identified as having a mean or standard deviation. The mapping below showing the original name based on "features_info.txt" and "features.txt" prior to being summarized with a mean.

The column names were modified based on heuristics outlined in the accompanying README file.

*               MeanTimeBodyAccelMean_X*                    tBodyAcc-mean()-X
*               MeanTimeBodyAccelMean_Y*                    tBodyAcc-mean()-Y
*               MeanTimeBodyAccelMean_Z*                    tBodyAcc-mean()-Z
*              MeanTimeBodyAccelStdev_X*                     tBodyAcc-std()-X
*              MeanTimeBodyAccelStdev_Y*                     tBodyAcc-std()-Y
*              MeanTimeBodyAccelStdev_Z*                     tBodyAcc-std()-Z
*            MeanTimeGravityAccelMean_X*                 tGravityAcc-mean()-X
*            MeanTimeGravityAccelMean_Y*                 tGravityAcc-mean()-Y
*            MeanTimeGravityAccelMean_Z*                 tGravityAcc-mean()-Z
*           MeanTimeGravityAccelStdev_X*                  tGravityAcc-std()-X
*           MeanTimeGravityAccelStdev_Y*                  tGravityAcc-std()-Y
*           MeanTimeGravityAccelStdev_Z*                  tGravityAcc-std()-Z
*           MeanTimeBodyAccelJerkMean_X*                tBodyAccJerk-mean()-X
*           MeanTimeBodyAccelJerkMean_Y*                tBodyAccJerk-mean()-Y
*           MeanTimeBodyAccelJerkMean_Z*                tBodyAccJerk-mean()-Z
*          MeanTimeBodyAccelJerkStdev_X*                 tBodyAccJerk-std()-X
*          MeanTimeBodyAccelJerkStdev_Y*                 tBodyAccJerk-std()-Y
*          MeanTimeBodyAccelJerkStdev_Z*                 tBodyAccJerk-std()-Z
*                MeanTimeBodyGyroMean_X*                   tBodyGyro-mean()-X
*                MeanTimeBodyGyroMean_Y*                   tBodyGyro-mean()-Y
*                MeanTimeBodyGyroMean_Z*                   tBodyGyro-mean()-Z
*               MeanTimeBodyGyroStdev_X*                    tBodyGyro-std()-X
*               MeanTimeBodyGyroStdev_Y*                    tBodyGyro-std()-Y
*               MeanTimeBodyGyroStdev_Z*                    tBodyGyro-std()-Z
*            MeanTimeBodyGryoJerkMean_X*               tBodyGyroJerk-mean()-X
*            MeanTimeBodyGryoJerkMean_Y*               tBodyGyroJerk-mean()-Y
*            MeanTimeBodyGryoJerkMean_Z*               tBodyGyroJerk-mean()-Z
*           MeanTimeBodyGryoJerkStdev_X*                tBodyGyroJerk-std()-X
*           MeanTimeBodyGryoJerkStdev_Y*                tBodyGyroJerk-std()-Y
*           MeanTimeBodyGryoJerkStdev_Z*                tBodyGyroJerk-std()-Z
*            MeanTimeBodyAccelMagniMean*                   tBodyAccMag-mean()
*           MeanTimeBodyAccelMagniStdev*                    tBodyAccMag-std()
*         MeanTimeGravityAccelMagniMean*                tGravityAccMag-mean()
*        MeanTimeGravityAccelMagniStdev*                 tGravityAccMag-std()
*        MeanTimeBodyAccelJerkMagniMean*               tBodyAccJerkMag-mean()
*       MeanTimeBodyAccelJerkMagniStdev*                tBodyAccJerkMag-std()
*             MeanTimeBodyGyroMagniMean*                  tBodyGyroMag-mean()
*            MeanTimeBodyGyroMagniStdev*                   tBodyGyroMag-std()
*         MeanTimeBodyGyroJerkMagniMean*              tBodyGyroJerkMag-mean()
*        MeanTimeBodyGryoJerkMagniStdev*               tBodyGyroJerkMag-std()
*               MeanFreqBodyAccelMean_X*                    fBodyAcc-mean()-X
*               MeanFreqBodyAccelMean_Y*                    fBodyAcc-mean()-Y
*               MeanFreqBodyAccelMean_Z*                    fBodyAcc-mean()-Z
*              MeanFreqBodyAccelStdev_X*                     fBodyAcc-std()-X
*              MeanFreqBodyAccelStdev_Y*                     fBodyAcc-std()-Y
*              MeanFreqBodyAccelStdev_Z*                     fBodyAcc-std()-Z
*           MeanFreqBodyAccelMeanFreq_X*                fBodyAcc-meanFreq()-X
*           MeanFreqBodyAccelMeanFreq_Y*                fBodyAcc-meanFreq()-Y
*           MeanFreqBodyAccelMeanFreq_Z*                fBodyAcc-meanFreq()-Z
*                MeanFreqBodyJerkMean_X*                fBodyAccJerk-mean()-X
*                MeanFreqBodyJerkMean_Y*                fBodyAccJerk-mean()-Y
*                MeanFreqBodyJerkMean_Z*                fBodyAccJerk-mean()-Z
*                MeanFreqBodyJerkStev_X*                 fBodyAccJerk-std()-X
*                MeanFreqBodyJerkStev_Y*                 fBodyAccJerk-std()-Y
*                MeanFreqBodyJerkStev_Z*                 fBodyAccJerk-std()-Z
*       MeanFreqBodyAccelJerkMeanFreq_X*            fBodyAccJerk-meanFreq()-X
*       MeanFreqBodyAccelJerkMeanFreq_Y*            fBodyAccJerk-meanFreq()-Y
*       MeanFreqBodyAccelJerkMeanFreq_Z*            fBodyAccJerk-meanFreq()-Z
*                MeanFreqBodyGyroMean_X*                   fBodyGyro-mean()-X
*                MeanFreqBodyGyroMean_Y*                   fBodyGyro-mean()-Y
*                MeanFreqBodyGyroMean_Z*                   fBodyGyro-mean()-Z
*               MeanFreqBodyGryoStdev_X*                    fBodyGyro-std()-X
*               MeanFreqBodyGryoStdev_Y*                    fBodyGyro-std()-Y
*               MeanFreqBodyGryoStdev_Z*                    fBodyGyro-std()-Z
*            MeanFreqBodyGryoMeanFreq_X*               fBodyGyro-meanFreq()-X
*            MeanFreqBodyGryoMeanFreq_Y*               fBodyGyro-meanFreq()-Y
*            MeanFreqBodyGryoMeanFreq_Z*               fBodyGyro-meanFreq()-Z
*            MeanFreqBodyAccelMagniMean*                   fBodyAccMag-mean()
*           MeanFreqBodyAccelMagniStdev*                    fBodyAccMag-std()
*        MeanFreqBodyAccelMagniMeanFreq*               fBodyAccMag-meanFreq()
*        MeanFreqBodyAccelJerkMangiMean*           fBodyBodyAccJerkMag-mean()
*       MeanFreqBodyAccelJerkMangiStdev*            fBodyBodyAccJerkMag-std()
*    MeanFreqBodyAccelJerkMangiMeanFreq*       fBodyBodyAccJerkMag-meanFreq()
*             MeanFreqBodyGyroMagniMean*              fBodyBodyGyroMag-mean()
*            MeanFreqBodyGyroMagniStdev*               fBodyBodyGyroMag-std()
*         MeanFreqBodyGyroMagniMeanFreq*          fBodyBodyGyroMag-meanFreq()
*         MeanFreqBodyGyroJerkMagniMean*          fBodyBodyGyroJerkMag-mean()
*        MeanFreqBodyGyroJerkMagniStdev*           fBodyBodyGyroJerkMag-std()
*     MeanFreqBodyGyroJerkMagniMeanFreq*      fBodyBodyGyroJerkMag-meanFreq()
*     MeanAngleTimeBodyAccelMeanGravity*          angle(tBodyAccMean,gravity)
* MeanAngleTimeBodyAccelJerkMeanGravityMean* angle(tBodyAccJerkMean),gravityMean)
*  MeanAngleTimeBodyGyroMeanGravityMean*     angle(tBodyGyroMean,gravityMean)
*  MeanAngleTimeBodyGyroJerkMeanGravityMean* angle(tBodyGyroJerkMean,gravityMean)
*                MeanAngleGravityMean_X*                 angle(X,gravityMean)
*                MeanAngleGravityMean_Y*                 angle(Y,gravityMean)
*                MeanAngleGravityMean_Z*                 angle(Z,gravityMean)

