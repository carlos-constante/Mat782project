## MILESTONE 4.- Frequency Distribution analysis of the data.

## Importing and assigning a name to the data
library(readr)
DC <- read_csv("~/Lehman_grad_math_program/2020_spring/Mat_782/homeworks/Project/Mat782project/Row_data/New_York_City_Leading_Causes_of_Death (2).csv",
col_types = cols(`Age Adjusted Death Rate` = col_number(),
`Death Rate` = col_number(), Deaths = col_integer()),
na = "0")

## View Data DC
View(DC) 

## Histogram of the Frequency of Number of Death in NYC
hist(DC$Deaths, main = "Histogram of Deaths in NYC", 
     xlab = "Number of Deaths", ## Labeling x-axis
     ylab = "Frequency", ## Labeling y-axis
     col = "skyblue") ## Give some color to the bars

## Histogram of the Frequency of Death Rate by Race/Ethnicity in NYC
hist(DC$`Death Rate`, main = "Histogram of Death Rate in NYC", 
     xlab = "Rate of Death", ## Labeling x-axis.
     ylab = "Frequency", ## Labeling y-axis.
     col = "skyblue") ## Give some color to the bars.

## Histogram of the Frequency of Age Adjusted Death Rate by Race/Ethnicity in NYC
hist(DC$`Age Adjusted Death Rate`, 
     main = "Histogram of Age Adjusted Death Rate", 
     xlab = "Age Adjusted Death Rate", ##Labeling x-axis.
     ylab = "Frequency", ## Labeling y-axis.
     col = "yellow") ## Giving some color to the bars.


## Barplot of the Frequency of all Death Causes by Race/Ethnicity in NYC
other <- table(DC$`Leading Cause`) ## Creating a new data frame of only Leading Cause of Death
par(mar = c(20, 4, 4, 4), ## Creating space for legend at the bottom of the graph
    xpd = TRUE) ## Allowing to place the legend outside of the barplot.
barplot(table(DC$`Leading Cause`),
        main="Frequency Distribution of Death Causes in NYC",
        xlab = "", ## No Label on x-axis.
        xaxt = "n", ## No names of the Leading Causes as they are extremely long.
        ylab = "Frequency", ## Labeling y-axis
        col = "orange") ## Giving some color to the bars.
## Assigning some text to x-axis
text(seq(1, 31, by = 1.2), ## creating the right spacing for the new values to be under each bar.
     par("usr")[3]-5, ## Move labels to just below bottom of chart.
     adj = 0.9, ##Adjust the labels to almost 100% right-justified.
     xpd = TRUE, ## Allowing to place the text under the x-axis which it is outside of the barplot.
     labels(row.names(other))) ## Using the row names of the Leading causes of death in NYC.
## Creating a legend
legend("bottomleft", ## Assigning to be at the bottomleft
       inset = c(0,-1.75), ## Move labels to just below bottom of chart.
       c(row.names(other)), ## Use numbers from the new data frame.
       pch = c(labels(row.names(other))), ## Use names from the new data frame.
       cex = 0.65) ##Decrease label size.

## Barplot of the Frequency Distribution of Death by Race/Ethnicity
par(mar = c(15, 4, 4, 4),
    xpd = TRUE) ## Creating space for text at the bottom of the graph
barplot(table(DC$`Race Ethnicity`),
        main = "Frequency Distribution of Death by Race / Ethnicity",
        xlab = "",
        las = 2,
        ylab = "Frequency",
        col.axis = "blue",
        col.lab = "purple",
        font.lab = 2,
        col = "lightblue")
text(x = 4.2,
     y = par("usr")[3]-5,
     adj = 0.9,
     xpd = TRUE,
     labels = c("Race / Ethnicity"),
     col = "purple",
     font = 2
     )

