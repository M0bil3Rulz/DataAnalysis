# Question 2
con <- url("http://simplystatistics.tumblr.com")
simpleStats <- readLines(con, 150)
close(con)
characterCount <- nchar(simpleStats, type="chars", allowNA=FALSE)
characterCount[2]
characterCount[45]
characterCount[122]

# Question 3
fileURL <- "https://spark-public.s3.amazonaws.com/dataanalysis/ss06hid.csv"
dateFileName <- paste0(getwd(), "/data.csv")
download.file(fileURL, destfile=dateFileName)
csvData <- read.table(dateFileName, sep=",", header=TRUE)
nrow( subset( csvData, csvData$VAL == 24) )
