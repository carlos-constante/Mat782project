
DC <- read_csv("New_York_City_Leading_Causes_of_Death (2).csv"),

View(DC)

hist(DC$Deaths, main = "Histogram of Deaths in NYC", 
     xlab = "Number of Deaths", 
     ylab = "Frequency", 
     col = "skyblue")

hist(DC$`Death Rate`, main = "Histogram of Death Rate in NYC", 
     xlab = "Rate of Death", 
     ylab = "Frequency", 
     col = "skyblue")

hist(DC$`Age Adjusted Death Rate`, 
     main = "Histogram of Age Adjusted Death Rate", 
     xlab = "Age Adjusted Death Rate", 
     ylab = "Frequency", 
     col = "yellow")

other <- table(cause$`Leading Cause`)
par(mar = c(20, 4, 4, 4),
    xpd = TRUE)
barplot(table(cause$`Leading Cause`),
        main="Frequency Distribution of Death Causes in NYC",
        xlab = "",
        xaxt = "n",
        ylab = "Frequency",
        col = "orange")

text(seq(1, 31, by = 1.2),
     par("usr")[3]-5,
     adj = 0.9, 
     xpd = TRUE,
     labels(row.names(other)))

legend("bottomleft",
       inset = c(0,-1.8), 
       c(row.names(other)), 
       pch = c(labels(row.names(other))),
       cex = 0.6)

