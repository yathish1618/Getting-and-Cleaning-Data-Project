This code book modifies and updates the available codebooks with the data.
It indicates all the variables and summaries calculated, along with units, and other relevant information.
It describes the variables, the data, and some transformations.

##Variables

The variables in the tidy data set are time domain signals (prefix 'Time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude. These are Frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The tidy data set contains only means and standar deviations for these variables aggregated over activity and subject.

###Common details:
1. The units of accelerometer means/std are given in standard gravity units 'g'.
2. The units of gyroscope means/std are given in radians/second.
3. Variables are normalized and bounded within [-1,1].

The details of each variable are as follows:

1. Activity
+ Factor with 6 levels - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2. Subject
+ Ranges from 1-30. Each number represents a different experimental subject. In this dataset the subjects ranged from an age group of 30-48. More details can be found in the code book of original data set.
3. TimeBodyAccelerometerMeanX
4. TimeBodyAccelerometerMeanY                                  
5. TimeBodyAccelerometerMeanZ                                  
6. TimeBodyAccelerometerStandardDeviationX                     
7. TimeBodyAccelerometerStandardDeviationY                     
8. TimeBodyAccelerometerStandardDeviationZ                     
9. TimeGravityAccelerometerMeanX                               
10. TimeGravityAccelerometerMeanY                               
11. TimeGravityAccelerometerMeanZ                               
12. TimeGravityAccelerometerStandardDeviationX                  
13. TimeGravityAccelerometerStandardDeviationY                  
14. TimeGravityAccelerometerStandardDeviationZ                  
15. TimeBodyAccelerometerJerkMeanX                              
16. TimeBodyAccelerometerJerkMeanY                              
17. TimeBodyAccelerometerJerkMeanZ                              
18. TimeBodyAccelerometerJerkStandardDeviationX                 
19. TimeBodyAccelerometerJerkStandardDeviationY                 
20. TimeBodyAccelerometerJerkStandardDeviationZ                 
21. TimeBodyGyroscopeMeanX                                      
22. TimeBodyGyroscopeMeanY                                      
23. TimeBodyGyroscopeMeanZ                                      
24. TimeBodyGyroscopeStandardDeviationX                         
25. TimeBodyGyroscopeStandardDeviationY                         
26. TimeBodyGyroscopeStandardDeviationZ                         
27. TimeBodyGyroscopeJerkMeanX                                  
28. TimeBodyGyroscopeJerkMeanY                                  
29. TimeBodyGyroscopeJerkMeanZ                                  
30. TimeBodyGyroscopeJerkStandardDeviationX                     
31. TimeBodyGyroscopeJerkStandardDeviationY                     
32. TimeBodyGyroscopeJerkStandardDeviationZ                     
33. TimeBodyAccelerometerMagnitudeMean                          
34. TimeBodyAccelerometerMagnitudeStandardDeviation             
35. TimeGravityAccelerometerMagnitudeMean                       
36. TimeGravityAccelerometerMagnitudeStandardDeviation          
37. TimeBodyAccelerometerJerkMagnitudeMean                      
38. TimeBodyAccelerometerJerkMagnitudeStandardDeviation         
39. TimeBodyGyroscopeMagnitudeMean                              
40. TimeBodyGyroscopeMagnitudeStandardDeviation                 
41. TimeBodyGyroscopeJerkMagnitudeMean                          
42. TimeBodyGyroscopeJerkMagnitudeStandardDeviation             
43. FrequencyBodyAccelerometerMeanX                             
44. FrequencyBodyAccelerometerMeanY                             
45. FrequencyBodyAccelerometerMeanZ                             
46. FrequencyBodyAccelerometerStandardDeviationX                
47. FrequencyBodyAccelerometerStandardDeviationY                
48. FrequencyBodyAccelerometerStandardDeviationZ                
49. FrequencyBodyAccelerometerJerkMeanX                         
50. FrequencyBodyAccelerometerJerkMeanY                         
51. FrequencyBodyAccelerometerJerkMeanZ                         
52. FrequencyBodyAccelerometerJerkStandardDeviationX            
53. FrequencyBodyAccelerometerJerkStandardDeviationY            
54. FrequencyBodyAccelerometerJerkStandardDeviationZ            
55. FrequencyBodyGyroscopeMeanX                                 
56. FrequencyBodyGyroscopeMeanY                                 
57. FrequencyBodyGyroscopeMeanZ                                 
58. FrequencyBodyGyroscopeStandardDeviationX                    
59. FrequencyBodyGyroscopeStandardDeviationY                    
60. FrequencyBodyGyroscopeStandardDeviationZ                    
61. FrequencyBodyAccelerometerMagnitudeMean                     
62. FrequencyBodyAccelerometerMagnitudeStandardDeviation        
63. FrequencyBodyBodyAccelerometerJerkMagnitudeMean             
64. FrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation
65. FrequencyBodyBodyGyroscopeMagnitudeMean                     
66. FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation        
67. FrequencyBodyBodyGyroscopeJerkMagnitudeMean                 
68. FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation 

A more detailed code book pertaining to the original data set can be found along with the original data set itself.