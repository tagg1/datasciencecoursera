
README

The source data represent data collected from smartphone accelerometers. The data are from Samsung Galaxy S smartphones: thus the final tidy datasets output are named samsung_complete.csv and samsung_summary.csv. The source of the data can be found at the following link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Unlike the original data, the cleaned data are limited to variables that refer to "mean" or "std". These filtered variables include several variables that measure the angles between the gravity vector and the mean of other vectors (e.g. "angle_tBodyGyroMean_gravityMean") since the underlying data represent a mean.

In order to run the cleaning script, "run_analysis.R" must be present in the directory that contains the source data. For the original data, the name of this directory is: "UCI HAR Dataset". The script relies on the presence of the files "activity_labels.txt", "features.txt", and train and test directories that each contain subject, X, and y files (such as for test, "subject_test.txt", "X_test.txt", and "y_test.txt").

When run by issueing a source command, the two files that will be output are "samsung_complete.csv" and "samsung_summary.csv".

The labels used are taken directly from the 'activities.txt' file.

The variables that are reported on are listed below, and pertain to specific measurements that are explained more fully in the "features_info.txt" file in the source repository. In the cleaned files, the "t" abbreviation in the name has been expanded to "time", and the "f" has been expanded to "frequency". The various parentheses and dashes have been consolidated to underscores to simplfy working with the variables programatically. The variable names in "samsung_summary.csv" have a "mean_" prepended to their name indicating that they are the mean of the values for a given subject and activity pair.


Filtered Variables:

 [1] "timeBodyAcc_mean_X"                   
 [2] "timeBodyAcc_mean_Y"                   
 [3] "timeBodyAcc_mean_Z"                   
 [4] "timeBodyAcc_std_X"                    
 [5] "timeBodyAcc_std_Y"                    
 [6] "timeBodyAcc_std_Z"                    
 [7] "timeGravityAcc_mean_X"                
 [8] "timeGravityAcc_mean_Y"                
 [9] "timeGravityAcc_mean_Z"                
[10] "timeGravityAcc_std_X"                 
[11] "timeGravityAcc_std_Y"                 
[12] "timeGravityAcc_std_Z"                 
[13] "timeBodyAccJerk_mean_X"               
[14] "timeBodyAccJerk_mean_Y"               
[15] "timeBodyAccJerk_mean_Z"               
[16] "timeBodyAccJerk_std_X"                
[17] "timeBodyAccJerk_std_Y"                
[18] "timeBodyAccJerk_std_Z"                
[19] "timeBodyGyro_mean_X"                  
[20] "timeBodyGyro_mean_Y"                  
[21] "timeBodyGyro_mean_Z"                  
[22] "timeBodyGyro_std_X"                   
[23] "timeBodyGyro_std_Y"                   
[24] "timeBodyGyro_std_Z"                   
[25] "timeBodyGyroJerk_mean_X"              
[26] "timeBodyGyroJerk_mean_Y"              
[27] "timeBodyGyroJerk_mean_Z"              
[28] "timeBodyGyroJerk_std_X"               
[29] "timeBodyGyroJerk_std_Y"               
[30] "timeBodyGyroJerk_std_Z"               
[31] "timeBodyAccMag_mean"                  
[32] "timeBodyAccMag_std"                   
[33] "timeGravityAccMag_mean"               
[34] "timeGravityAccMag_std"                
[35] "timeBodyAccJerkMag_mean"              
[36] "timeBodyAccJerkMag_std"               
[37] "timeBodyGyroMag_mean"                 
[38] "timeBodyGyroMag_std"                  
[39] "timeBodyGyroJerkMag_mean"             
[40] "timeBodyGyroJerkMag_std"              
[41] "frequencyBodyAcc_mean_X"              
[42] "frequencyBodyAcc_mean_Y"              
[43] "frequencyBodyAcc_mean_Z"              
[44] "frequencyBodyAcc_std_X"               
[45] "frequencyBodyAcc_std_Y"               
[46] "frequencyBodyAcc_std_Z"               
[47] "frequencyBodyAcc_meanFreq_X"          
[48] "frequencyBodyAcc_meanFreq_Y"          
[49] "frequencyBodyAcc_meanFreq_Z"          
[50] "frequencyBodyAccJerk_mean_X"          
[51] "frequencyBodyAccJerk_mean_Y"          
[52] "frequencyBodyAccJerk_mean_Z"          
[53] "frequencyBodyAccJerk_std_X"           
[54] "frequencyBodyAccJerk_std_Y"           
[55] "frequencyBodyAccJerk_std_Z"           
[56] "frequencyBodyAccJerk_meanFreq_X"      
[57] "frequencyBodyAccJerk_meanFreq_Y"      
[58] "frequencyBodyAccJerk_meanFreq_Z"      
[59] "frequencyBodyGyro_mean_X"             
[60] "frequencyBodyGyro_mean_Y"             
[61] "frequencyBodyGyro_mean_Z"             
[62] "frequencyBodyGyro_std_X"              
[63] "frequencyBodyGyro_std_Y"              
[64] "frequencyBodyGyro_std_Z"              
[65] "frequencyBodyGyro_meanFreq_X"         
[66] "frequencyBodyGyro_meanFreq_Y"         
[67] "frequencyBodyGyro_meanFreq_Z"         
[68] "frequencyBodyAccMag_mean"             
[69] "frequencyBodyAccMag_std"              
[70] "frequencyBodyAccMag_meanFreq"         
[71] "frequencyBodyBodyAccJerkMag_mean"     
[72] "frequencyBodyBodyAccJerkMag_std"      
[73] "frequencyBodyBodyAccJerkMag_meanFreq" 
[74] "frequencyBodyBodyGyroMag_mean"        
[75] "frequencyBodyBodyGyroMag_std"         
[76] "frequencyBodyBodyGyroMag_meanFreq"    
[77] "frequencyBodyBodyGyroJerkMag_mean"    
[78] "frequencyBodyBodyGyroJerkMag_std"     
[79] "frequencyBodyBodyGyroJerkMag_meanFreq"
[80] "angle_tBodyAccMean_gravity"           
[81] "angle_tBodyAccJerkMean_gravityMean"   
[82] "angle_tBodyGyroMean_gravityMean"      
[83] "angle_tBodyGyroJerkMean_gravityMean"  
[84] "angle_X_gravityMean"                  
[85] "angle_Y_gravityMean"                  
[86] "angle_Z_gravityMean"

