# Read in data files
data <- read.csv("~/Programming/R/open-advertising-dataset/dataset/keyword_stats_20111226_0351841.csv", header=T, stringsAsFactors=F)

# Data Frames with NA values removed
kstats <- as.numeric(suppressWarnings(data[!is.na(as.numeric(data$Global.Monthly.Searches)),]))
hist(as.numeric(kstats$Global.Monthly.Searches), 
	main="(A) Histogram of all search terms", 
	xlab="Monthly Searches", breaks=30)
hist(as.numeric(kstats$Global.Monthly.Searches[as.numeric(kstats$Global.Monthly.Searches) < 1e6]), 
	main="(B) Bottom 75% of all search terms", 
	xlab="Monthly Searches", breaks = 30)
hist(as.numeric(kstats$Global.Monthly.Searches[as.numeric(kstats$Global.Monthly.Searches) < 1e6 & as.numeric(kstats$Global.Monthly.Searches) > 5.4e03]), 
	main="(B) Middle 50% of all search terms", 
	xlab="Monthly Searches", breaks = 30)
quantile(as.numeric(kstats$Global.Monthly.Searches))