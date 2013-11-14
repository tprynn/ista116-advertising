# Read in data files
data <- read.csv("~/Programming/R/open-advertising-dataset/dataset/keyword_stats_20111226_0351841.csv", header=T, stringsAsFactors=F)

# Data Frames with NA values removed
kstats <- suppressWarnings(data[!is.na(as.numeric(data$Global.Monthly.Searches)),])

# Std. Deviation Samples
sample_iqr <- replicate(50000, sd(as.numeric(sample(kstats$Global.Monthly.Searches, 15, replace = FALSE))))

names <- c("Median from\n50k samples", "sim", "android", "lawyer", "insurance", "credit", "lemon", "ink", "equity", "hair", "canon")
IQRs <- c(median(sample_iqr), 14380, 31700, 7700, 177525, 129600, 4575, 677000, 154800, 2800, 610000)

barplot(IQRs, 
	names.arg = names, 
	main = "IQR values for selected bundles of terms", 
	xlab="Term", 
	ylab="Monthly Search IQR", 
	col=c("blue", replicate(length(names)-1,"green")));