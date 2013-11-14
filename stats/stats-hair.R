# Tanner Prynn ISTA 116 Final Project
# THIS FILE WAS AUTOMATICALLY GENERATED

# Read in data files
data <- read.csv("~/Programming/R/open-advertising-dataset/dataset/keyword_stats_20111226_0351841.csv", header=T, stringsAsFactors=F)
hair <- read.csv("~/Programming/R/open-advertising-dataset/terms/hair/keyword_stats_20111226_0351841.csv", header=F, stringsAsFactors=F)

# Data Frames with NA values removed
kstats <- suppressWarnings(data[!is.na(as.numeric(data$Global.Monthly.Searches)),])
hair <- suppressWarnings(hair[!is.na(as.numeric(hair$V2)),])

# Number of observations we have of the specific term
observations <- length(row.names(hair))

# Median Samples -- Unused
#sample_median <- replicate(10000, median(as.numeric(sample(kstats$Global.Monthly.Searches, observations, replace = FALSE))))
#hist(sample_median)

# Std. Deviation Samples
sample_sd <- replicate(10000, sd(as.numeric(sample(kstats$Global.Monthly.Searches, observations, replace = FALSE))))
#hist(sample_sd)
# IQR Samples
sample_iqr <- replicate(10000, IQR(as.numeric(sample(kstats$Global.Monthly.Searches, observations, replace = FALSE))))
#hist(sample_iqr)

# Test IQR at 95% confidence
print("IQR Test at 95% Confidence:")
print("Value at 0.05 Quantile for 10000 samples from all data:")
quantile(sample_iqr, 0.05)
print("IQR value for all observations of hair:")
iqr <- IQR(hair$V2)
iqr
print("P-value for observed IQR of hair:")
length(sample_iqr[sample_iqr <= iqr])/length(sample_iqr)

# Test Std. Deviation at 95% confidence
#print("Std. Deviation Test at 95% Confidence:")
#print("Value at 0.05 Quantile for 10000 samples from all data:")
#quantile(sample_sd, 0.05)
#print("Std. Deviation value for all observations of hair:")
#sd(hair$V2)
