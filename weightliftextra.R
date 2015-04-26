#remove variables with no variance
nzv <- nearZeroVar(wldata, saveMetrics = TRUE)
remove <- names(wldata[,nzv$nzv == TRUE])
wldata <- wldata[, !names(wldata) %in% remove]



print(model1$finalModel)
plot(model1$finalModel, main="Classification Tree")
text(model1$finalModel, use.n=TRUE, all=TRUE, cex=0.5)


https://rpubs.com/snowflakes24/75912