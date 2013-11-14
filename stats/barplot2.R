names <- c("sim", "android", "lawyer", "insurance", "credit", "lemon", "ink", "equity", "hair", "canon")
quantiles <- c(197750, 157075, 128400, 153722.5, 130600, 103943.8, 117600, 95210, 60475, 37093.75)
IQRs <- c(14380, 31700, 7700, 177525, 129600, 4575, 677000, 154800, 2800, 610000)
terms <- matrix(nrow = 10, ncol = 2)
terms[,1] <- quantiles
terms[,2] <- IQRs
rownames(terms) <- names
colnames(terms) <- c(".05 Quantile", "Observed IQR")
barplot(t(terms), main = "Observed vs\n.05 Quantile", xlab = "Term", ylab = "Monthly Searches", beside = TRUE, col = c("blue", "mediumpurple"))
legend(3.5, 6e5, colnames(terms),  fill = c("blue", "mediumpurple"))