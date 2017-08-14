# Code Book:

"subject" and "activity" are the aggregate variables from which
the avergaes are displayed and recorded.

The acronyms pertain to them as such, 
acc - accelerometer, gyro: gyroscope, std - standard deviation, etc, to
list but a few.

Frome the original dataset:
"t" - has been changed to "time" to represent the time domain readings.
"f" - has been changed to "frequency" for frequency doming readings. 

Below is the link for the dataset and a detailed description of the variables can be 
found in the README.txt file contained within the folder:- 
https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones

The colnames (column names - i.e. variables) from the tidy dataset are listed below:

 [1] "subject"                                  "activity"                                
 [3] "time.BodyAcc-mean()-X"                    "time.BodyAcc-mean()-Y"                   
 [5] "time.BodyAcc-mean()-Z"                    "time.BodyAcc-std()-X"                    
 [7] "time.BodyAcc-std()-Y"                     "time.BodyAcc-std()-Z"                    
 [9] "time.GravityAcc-mean()-X"                 "time.GravityAcc-mean()-Y"                
[11] "time.GravityAcc-mean()-Z"                 "time.GravityAcc-std()-X"                 
[13] "time.GravityAcc-std()-Y"                  "time.GravityAcc-std()-Z"                 
[15] "time.BodyAccJerk-mean()-X"                "time.BodyAccJerk-mean()-Y"               
[17] "time.BodyAccJerk-mean()-Z"                "time.BodyAccJerk-std()-X"                
[19] "time.BodyAccJerk-std()-Y"                 "time.BodyAccJerk-std()-Z"                
[21] "time.BodyGyro-mean()-X"                   "time.BodyGyro-mean()-Y"                  
[23] "time.BodyGyro-mean()-Z"                   "time.BodyGyro-std()-X"                   
[25] "time.BodyGyro-std()-Y"                    "time.BodyGyro-std()-Z"                   
[27] "time.BodyGyroJerk-mean()-X"               "time.BodyGyroJerk-mean()-Y"              
[29] "time.BodyGyroJerk-mean()-Z"               "time.BodyGyroJerk-std()-X"               
[31] "time.BodyGyroJerk-std()-Y"                "time.BodyGyroJerk-std()-Z"               
[33] "time.BodyAccMag-mean()"                   "time.BodyAccMag-std()"                   
[35] "time.GravityAccMag-mean()"                "time.GravityAccMag-std()"                
[37] "time.BodyAccJerkMag-mean()"               "time.BodyAccJerkMag-std()"               
[39] "time.BodyGyroMag-mean()"                  "time.BodyGyroMag-std()"                  
[41] "time.BodyGyroJerkMag-mean()"              "time.BodyGyroJerkMag-std()"              
[43] "frequency.BodyAcc-mean()-X"               "frequency.BodyAcc-mean()-Y"              
[45] "frequency.BodyAcc-mean()-Z"               "frequency.BodyAcc-std()-X"               
[47] "frequency.BodyAcc-std()-Y"                "frequency.BodyAcc-std()-Z"               
[49] "frequency.BodyAcc-meanFreq()-X"           "frequency.BodyAcc-meanFreq()-Y"          
[51] "frequency.BodyAcc-meanFreq()-Z"           "frequency.BodyAccJerk-mean()-X"          
[53] "frequency.BodyAccJerk-mean()-Y"           "frequency.BodyAccJerk-mean()-Z"          
[55] "frequency.BodyAccJerk-std()-X"            "frequency.BodyAccJerk-std()-Y"           
[57] "frequency.BodyAccJerk-std()-Z"            "frequency.BodyAccJerk-meanFreq()-X"      
[59] "frequency.BodyAccJerk-meanFreq()-Y"       "frequency.BodyAccJerk-meanFreq()-Z"      
[61] "frequency.BodyGyro-mean()-X"              "frequency.BodyGyro-mean()-Y"             
[63] "frequency.BodyGyro-mean()-Z"              "frequency.BodyGyro-std()-X"              
[65] "frequency.BodyGyro-std()-Y"               "frequency.BodyGyro-std()-Z"              
[67] "frequency.BodyGyro-meanFreq()-X"          "frequency.BodyGyro-meanFreq()-Y"         
[69] "frequency.BodyGyro-meanFreq()-Z"          "frequency.BodyAccMag-mean()"             
[71] "frequency.BodyAccMag-std()"               "frequency.BodyAccMag-meanFreq()"         
[73] "frequency.BodyBodyAccJerkMag-mean()"      "frequency.BodyBodyAccJerkMag-std()"      
[75] "frequency.BodyBodyAccJerkMag-meanFreq()"  "frequency.BodyBodyGyroMag-mean()"        
[77] "frequency.BodyBodyGyroMag-std()"          "frequency.BodyBodyGyroMag-meanFreq()"    
[79] "frequency.BodyBodyGyroJerkMag-mean()"     "frequency.BodyBodyGyroJerkMag-std()"     
[81] "frequency.BodyBodyGyroJerkMag-meanFreq()" "angle(tBodyAccMean,gravity)"             
[83] "angle(tBodyAccJerkMean),gravityMean)"     "angle(tBodyGyroMean,gravityMean)"        
[85] "angle(tBodyGyroJerkMean,gravityMean)"     "angle(X,gravityMean)"                    
[87] "angle(Y,gravityMean)"                     "angle(Z,gravityMean)"    
