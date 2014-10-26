# Load library for later reshaping
library(reshape2)

# Read train data
train <- read.table("X_train.txt")
train_subjects <- read.table("subject_train.txt")
train_activities <- read.table("y_train.txt")

# Add subject_id and activity columns to train data
train$subject_id <- as.numeric(train_subjects[,1])
train$activity <- as.numeric(train_activities[,1])

# Read test data
test <- read.table("X_test.txt")
test_subjects <- read.table("subject_test.txt")
test_activities <- read.table("y_test.txt")

# Add subject_id and activity columns to test data
test$subject_id <- as.numeric(test_subjects[,1])
test$activity <- as.numeric(test_activities[,1])

# Merge train and test data
data <- rbind(train, test)

# Subsets the data so that only mean and std are selected
# together with activity and subject
feature_names <- read.table("features.txt")
indices <- grep("mean()|std()",feature_names[,2])

column_names <- feature_names[indices, 2]

indices <- c(which(colnames(data) == "subject_id"), indices, which(colnames(data) == "activity"))
data <- data[,indices]

# Use descriptive activity names and remove activity_id column
activity_names <- read.table("activity_labels.txt")
data$activity <- factor(data$activity)
levels(data$activity) <- activity_names[,2]
#data <- merge(data, activity_names, by.x = "activity_id", by.y = "v1", all = TRUE)
#data$activity_id <- NULL

# Use appropriate column names
colnames(data) <- c("subject_id", as.character(column_names), "activity")

# Create tidy data set with the average of each variable 
# for each activity and each subject
melted_data <- melt(data, id = c("activity", "subject_id"))
tidy_data <- dcast(melted_data, subject_id + activity ~ variable, mean)

# Save tidy dataset to a separate file
write.table(tidy_data, file = "tidy_data.txt", row.name = FALSE)


