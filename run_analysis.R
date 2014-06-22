#Given a folder name, e.g., train or test, create a list of dataframes named X, y, and subject.
read_data <- function(folder_name){
    subject <- read.csv(paste(folder_name,paste("subject_",folder_name,".txt" ,sep=""), sep="//"), sep="", header=FALSE)
    X <- read.csv(paste(folder_name,paste("X_",folder_name,".txt",sep=""), sep="//"), sep="", header=FALSE)
    y <- read.csv(paste(folder_name,paste("y_",folder_name,".txt",sep=""), sep="//"), sep="", header=FALSE)
    list(subject=subject, X=X, y=y)
}

#Load the training and test data
train_data <- read_data("train")
test_data <- read_data("test")

#Read the feature names from the file
features <- read.csv("features.txt", header=FALSE, sep=" ")

#Change the column names to meaningful names
names(train_data$X) <- features$V2
names(test_data$X) <- features$V2
names(train_data$y) <- c("activity")
names(test_data$y) <- c("activity")
names(train_data$subject) <- c("subjectId")
names(test_data$subject) <- c("subjectId")

#Join the X, y, and subject dataframes for both train and test data 
train_joined <- cbind(train_data$subject, train_data$X, train_data$y)
test_joined <- cbind(test_data$subject, test_data$X, test_data$y)

#Combine the test and training data set
joined_all <- rbind(train_joined, test_joined)

#Subset the combined dataframe by getting only mean and standart deviation columns
subCols <-  c(1,grep("-mean\\(\\)|-std\\(\\)", names(joined_all)),length(joined_all))
sub_joined_all <- joined_all[,names(joined_all[,subCols])]    

#Read the names of activities from the file
activity_labels <-read.csv("activity_labels.txt", header=FALSE, sep=" ")

#Use descriptive activity names to name the activities in the data set 
sub_joined_all$activity <- sapply(sub_joined_all$activity, function (x) { activity_labels$V2[x] } )

#Melt the data so that "subjecId" and "activity" are the id variables, and rest are measure variables
molten <- melt(sub_joined_all, id.vars=c("subjectId","activity"))
#Compute the mean for each id variable, namely "subjectId" and "activity"
tidy_data <- dcast(data=molten,formula= subjectId+activity~variable, fun.aggregate=mean)

write.table(x=tidy_data, file="tidy_dataset.txt", sep=" ", row.names=FALSE)