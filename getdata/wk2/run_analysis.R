
## run_analysis.R transforms the source HAR dataset found at
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
## into two cleaned, tidy datasets representing the variables
## representing mean or standard deviation information.

## The second summary dataset summarizes the first.



## process branch will process the test or train data independently
## The branch will be 'test' or 'train', and the idx and col
## correspond to the columns that represent the filtered variables.
## The labels vector is an array of human-readable activity names
## with the index representing the translation.

process_branch <- function(branch, idx, col, labels) {
    save_wd <- getwd()
    setwd(branch)
    x_name <- sprintf("X_%s.txt",branch,stringsAsFactors=FALSE)
    X <- read.table(x_name)
    Xp <- X[,idx]
    colnames(Xp) <- col
    subject_name <- sprintf("subject_%s.txt",branch)
    Xp$subject <- read.table(subject_name)[,1]
    y_name <- sprintf("y_%s.txt",branch)
    y_int <- read.table(y_name)
    Xp$activity <- apply(y_int,1,function(x) labels[x])
    setwd(save_wd)
    Xp
}

labels <- gsub('[0-9]+ ','',readLines('activity_labels.txt'))
ms_features <- readLines('features.txt')
ms_index <- grep("mean|std",ms_features,value=FALSE,ignore.case=TRUE)
ms_lines <- grep("mean|std",ms_features,value=TRUE,ignore.case=TRUE)
ms_text <- sub('^[0-9]+ (.*)','\\1',ms_lines)
ms_text <- sub('^t','time',ms_text)
ms_text <- sub('^f','frequency',ms_text)

ms_clean <- gsub('[\\(\\),-]+','_',gsub('\\(*\\)$','',ms_text))

test_frame <- process_branch('test',ms_index,ms_clean,labels)
train_frame <- process_branch('train',ms_index,ms_clean,labels)

complete_frame <- rbind(test_frame,train_frame)
write.csv(complete_frame,"samsung_complete.csv")

require(data.table)
dt <-data.table(complete_frame)
setkeyv(dt,c('subject','activity'))
ans <- dt[, lapply(.SD, mean), by=c('subject','activity'), .SDcols = ms_clean]
n <- colnames(ans)
new_cols <- sub('((^time|^freq|^angle).*)','mean_\\1',n)
colnames(ans) <- new_cols
write.csv(ans,"samsung_summary.csv")

