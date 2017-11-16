# Variables
## Identifiers

 1. The `subjectId` in the second column represents the identification key for each of the 30 subjects.<br/>
 2. The `activityId` in the first column corresponds to different activities given below.<br/>
    * `WALKING`
    * `WALKING_UPSTAIRS`
    * `WALKING_DOWNSTAIRS`
    * `SITTING`
    * `STANDING`
    * `LAYING`
    
 ## Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Magnitudes of three-dimensional signals (containing `Magnitude`) were calculated using the Euclidean norm formula

There are two domains for which the measurements were given:

- Time-domain signals (prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometer-mean-X`
	- `timeDomainBodyAccelerometer-mean-Y`
	- `timeDomainBodyAccelerometer-mean-Z`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometer-std-X`
	- `timeDomainBodyAccelerometer-std-Y`
	- `timeDomainBodyAccelerometer-std-Z`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometer-mean-X`
	- `timeDomainGravityAccelerometer-mean-Y`
	- `timeDomainGravityAccelerometer-mean-Z`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometer-std-X`
	- `timeDomainGravityAccelerometer-std-Y`
	- `timeDomainGravityAccelerometer-std-Z`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerk-mean-X`
	- `timeDomainBodyAccelerometerJerk-mean-Y`
	- `timeDomainBodyAccelerometerJerk-mean-Z`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerJerk-std-X`
	- `timeDomainBodyAccelerometerJerk-std-Y`
	- `timeDomainBodyAccelerometerJerk-std-Z`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscope-mean-X`
	- `timeDomainBodyGyroscope-mean-Y`
	- `timeDomainBodyGyroscope-mean-Z`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomainBodyGyroscope-std-X`
	- `timeDomainBodyGyroscope-std-Y`
	- `timeDomainBodyGyroscope-std-Z`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerk-mean-X`
	- `timeDomainBodyGyroscopeJerk-mean-Y`
	- `timeDomainBodyGyroscopeJerk-mean-Z`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomainBodyGyroscopeJerk-std-X`
	- `timeDomainBodyGyroscopeJerk-std-Y`
	- `timeDomainBodyGyroscopeJerk-std-Z`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `timeDomainBodyAccelerometerMagnitude-mean`
	- `timeDomainBodyAccelerometerMagnitude-std`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `timeDomainGravityAccelerometerMagnitude-mean`
	- `timeDomainGravityAccelerometerMagnitude-std`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `timeDomainBodyAccelerometerJerkMagnitude-mean`
	- `timeDomainBodyAccelerometerJerkMagnitude-std`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `timeDomainBodyGyroscopeMagnitude-mean`
	- `timeDomainBodyGyroscopeMagnitude-std`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `timeDomainBodyGyroscopeJerkMagnitude-mean`
	- `timeDomainBodyGyroscopeJerkMagnitude-std`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometer-mean-X`
	- `frequencyDomainBodyAccelerometer-mean-Y`
	- `frequencyDomainBodyAccelerometer-mean-Z`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometer-std-X`
	- `frequencyDomainBodyAccelerometer-std-Y`
	- `frequencyDomainBodyAccelerometer-std-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometer-meanFreq-X`
	- `frequencyDomainBodyAccelerometer-meanFreq-Y`
	- `frequencyDomainBodyAccelerometer-meanFreq-Z`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerk-mean-X`
	- `frequencyDomainBodyAccelerometerJerk-mean-Y`
	- `frequencyDomainBodyAccelerometerJerk-mean-Z`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerk-std-X`
	- `frequencyDomainBodyAccelerometerJerk-std-Y`
	- `frequencyDomainBodyAccelerometerJerk-std-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerk-meanFreq-X`
	- `frequencyDomainBodyAccelerometerJerk-meanFreq-Y`
	- `frequencyDomainBodyAccelerometerJerk-meanFreq-Z`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscope-mean-X`
	- `frequencyDomainBodyGyroscope-mean-Y`
	- `frequencyDomainBodyGyroscope-mean-Z`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscope-std-X`
	- `frequencyDomainBodyGyroscope-std-Y`
	- `frequencyDomainBodyGyroscope-std-Z`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomainBodyGyroscope-meanFreq-X`
	- `frequencyDomainBodyGyroscope-meanFreq-Y`
	- `frequencyDomainBodyGyroscope-meanFreq-Z`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `frequencyDomainBodyAccelerometerMagnitude-mean`
	- `frequencyDomainBodyAccelerometerMagnitude-std`
	- `frequencyDomainBodyAccelerometerMagnitude-meanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `frequencyDomainBodyAccelerometerJerkMagnitude-mean`
	- `frequencyDomainBodyAccelerometerJerkMagnitude-std`
	- `frequencyDomainBodyAccelerometerJerkMagnitude-meanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `frequencyDomainBodyGyroscopeMagnitude-mean`
	- `frequencyDomainBodyGyroscopeMagnitude-std`
	- `frequencyDomainBodyGyroscopeMagnitude-meanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `frequencyDomainBodyGyroscopeJerkMagnitude-mean`
	- `frequencyDomainBodyGyroscopeJerkMagnitude-std`
	- `frequencyDomainBodyGyroscopeJerkMagnitude-meanFreq`

## Dataset <a name="transformations"></a>

The zip file containing the source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).



The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file to see what the code does).
