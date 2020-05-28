par(mar = c(7, 4, 2, 2) ) 
#DC = DC[with(DC, order(Leading Cause)),] 
end_point = 0.5 + nrow(DC) + nrow(DC) - 1 
barplot(table(DC$`Leading Cause`),
        main="Frequency Distribution of Death Causes in NYC",
        xlab = "",
        xaxt="n",
        space = 1,
        ylab = "Frequency", 
        col = "orange") 
text(seq(1.5, end_point, by = 2), 
     par("usr")[3]-0.25,
     srt = 60, 
     adj = 1, 
     xpd = TRUE, 
     labels = paste(rownames(DC)), cex = 0.65)

## Adjust some graphical parameters
par(mar = c(7, 6, 2, 2)),
dat <- subset(DC$`Leading Cause`),
## Draw boxplot witn no axes
barplot(table(DC$`Leading Cause`),
        main="Frequency Distribution of Death Causes in NYC",
        xaxt="n",
        yaxt="n",
        col = "orange")
## Draw x-axis without labels
axis(side = 1,
     labels = FALSE)
## Draw y-axis
axis(side = 2, 
     ## Rotate labels perpendicular to y-axis
     las = 2,
     ## Adjust y-axis label position
     mgp = c(3,0.75, 0))
text(x = 1:length(dat),
     # Move labels to just below bottom of chart.
     y = par("usr")[3] - 0.45,
     # Use names from the data list.
     labels = names(dat),
     # Change the clipping region.
     xpd = NA,
     # Rotate the labels by 35 degrees.
     srt = 45,
     #Adjust the labels to almost 100% right-justified.
     adj = 0.75,
     #Increase label size.
     cex = 0.8)

other <- table(DC$`Leading Cause`)
par(mar = c(26, 6, 6, 6) )
barplot(table(DC$`Leading Cause`),
        main="Frequency Distribution of Death Causes in NYC",
        xaxt = "n",
        yaxt = "n",
        col = "orange")

axis(side = 1,
     labels = FALSE)

axis(side = 2,
     las = 2,
     mgp = c(3,.75,0))

text(x = 1:length(other),
     y = par("usr")[3] - 20,
     labels = names(other),
     xpd = NA,
     srt = 90,
     adj = 1,
     cex = 0.8)



text(seq(1, 31, by = 1), 
     y = par("usr")[3]-5,
     srt = 90, 
     adj = 1, 
     xpd = TRUE, 
     labels = names(other))

legend("topright",c(row.names(other)), pch = c(labels(row.names(other))),cex = 0.8)
