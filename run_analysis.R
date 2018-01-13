# Using some functions from 'dplyr' package
library(dplyr)

# Read and combine training and test sets
x_train = read.table('X_train.txt', sep = '')
x_test = read.table('X_test.txt', sep = '')
x = rbind(x_train,x_test)

# Read and combine training and test labels
y_train = read.table('Y_train.txt', sep = '', col.names = 'class_label')
y_test = read.table('Y_test.txt', sep = '', col.names = 'class_label')
y = rbind(y_train, y_test)

# Read feature names table
features = read.table('features.txt', sep = '', col.names = c('index', 'col_name'))

# Filter column names that include only mean and std for each measurement
features = filter(features, grepl('\\bmean()\\b|std()', col_name))

# Select the columns and apply the names on the data set
x = x[,features$index]
colnames(x) = features$col_name

# Name the activity by joining the class label table and activity labels
activity_labels = read.table('activity_labels.txt', sep = '', col.names = c('class_label', 'activity'))
y = left_join(y, activity_labels, by = 'class_label')
data = cbind(y,x)
data = data[,2:ncol(data)]

# Combine data with the subject column
subject_train = read.table('subject_train.txt', sep = '')
subject_test = read.table('subject_test.txt', sep = '')
subject = rbind(subject_train, subject_test)
colnames(subject) = 'subject'

data = cbind(subject, data)

# Group the data by subject and activity then summarize with average of each variable
summary_table = data %>% group_by(subject, activity) %>% summarise_all(mean)

# Writing to file
write.table(summary_table, file = 'tidy_data.txt', sep = '\t', row.name = FALSE)
