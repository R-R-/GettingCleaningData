NTRAIN <- 7352
NTEST <- 2947

NTRAIN <- 10
NTEST <- 10

# 1. Merges the training and the test sets to create one data set.
# Read training dataset
train <- read.table("../Data/train/X_train.txt", sep="", header=F, nrows=NTRAIN)

# Read testing dataset
test <- read.table("../Data/test/X_test.txt", sep="", header=F, nrows=NTEST)

# Merge train & test dataset
all <- rbind(train, test)

# Remove variables to save space
remove(train)
remove(test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# Read the feature names
features <- read.table("../Data/features.txt", sep="", header=F, stringsAsFactors=F)
features <- features$V2

# Find the columns with mean and std. Use "mean\(" instead of just "mean" to exclude features meanFreq()
good_columns <- grep("mean\\(|std", features, ignore.case=T)

# Select only mean & std columns
all <- all[, good_columns]
