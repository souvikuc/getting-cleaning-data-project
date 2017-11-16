#Downloading and unzipping the dataset file
if(!dir.exists("C://Users/souvi/Documents/coursera/data_source")){dir.create("C://Users/souvi/Documents/coursera/data_source")}
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,"C://Users/souvi/Documents/coursera/data_source/smartphone_data.zip")
unzip("C://Users/souvi/Documents/coursera/data_source/smartphone_data.zip",exdir = "C://Users/souvi/Documents/coursera/data_source")
# Loading the training and test dataset into R including feature and activity
xtest<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/test/y_test.txt")
subjecttest<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/test/subject_test.txt")
xtrain<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/train/y_train.txt")
subjecttrain<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/train/subject_train.txt")
feature<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/features.txt")
activity<-read.table("C://Users/souvi/Documents/coursera/data_source/UCI HAR Dataset/activity_labels.txt")
#Merging training and test dataset into one dataset
colnames(xtrain) <- feature[,2]
colnames(ytrain) <-"activityId"
colnames(subjecttrain) <- "subjectId"
colnames(xtest) <- feature[,2] 
colnames(ytest) <- "activityId"
colnames(subjecttest) <- "subjectId"
colnames(activity) <- c('activityId','activityType')
marged_train <- cbind(ytrain, subjecttrain, xtrain)
marged_test <- cbind(ytest, subjecttest, xtest)
combined_data <- rbind(marged_train, marged_test)
#Extracting only mean and standard deviation data for each measurement from the dataset
col_names<-names(combined_data)
meanstd <- c("activityId","subjectId","mean", "std")
chosen_columns<-grepl(paste(meanstd, collapse = "|"), col_names)
filtered_data<-combined_data[,chosen_columns]
#Adding descriptive activity name in a separate column by activityID 
activity[,2]<-gsub("_"," ",activity[,2])
descriptive_data<-merge(filtered_data,activity,by="activityId",all.x = F)
names(descriptive_data)<-gsub("^t", "time", names(descriptive_data))
names(descriptive_data)<-gsub("^f", "frequency", names(descriptive_data))
names(descriptive_data)<-gsub("Acc", "Accelerometer", names(descriptive_data))
names(descriptive_data)<-gsub("Gyro", "Gyroscope", names(descriptive_data))
names(descriptive_data)<-gsub("Mag", "Magnitude", names(descriptive_data))
names(descriptive_data)<-gsub("BodyBody", "Body", names(descriptive_data))
names(descriptive_data)<-gsub("\\(|\\)", "", names(descriptive_data))
names(descriptive_data)<-gsub("_"," ",names(descriptive_data))
#Creating a second tidy dataset giving the means for each subject and activity and writing it in a text file 
sec_tidy_data<-aggregate(.~activityId+subjectId+activityType,descriptive_data,mean)
write.table(sec_tidy_data,"C://Users/souvi/Documents/coursera/getting and cleaning data project/second_tidy_data.txt")
