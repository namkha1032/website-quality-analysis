#Load packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")
install.packages("moments")
install.packages("hms")
install.packages("car")
install.packages("lmtest")
library("ggplot2")
library("dplyr")
library("broom")
library("ggpubr")
library("moments")
library("hms")
library("car")
library("lmtest")
###################################################################
#3.1. Sampling data
#Load file
source <- read.csv("D:/dataset.csv")
#Clean data
source <- source %>%
  na.omit()
#Sampling
mini <- source %>%
  filter(row_number() %% 13 == 0)
#Summary statistic value of the dataframe
summary(mini)
###################################################################
#3.2. Comparisons of Means
#Drawing boxplot
boxplot(mini$ExitRates, mini$BounceRates, mini$PageValues, outline = FALSE, names = c("ExitRates", "BounceRates", "PageValues"))
#t-test ExitRates and BounceRates
t.test(mini$ExitRates, mini$BounceRates, mu = 0, alt = "two.sided", cont = 0.95, var.eq = T, paired = F)
#t-test ExitRates and PageValues
t.test(mini$ExitRates, mini$PageValues, mu = 0, alt = "two.sided", cont = 0.95, var.eq = T, paired = F)
#t-test BounceRates and PageValues
t.test(mini$BounceRates, mini$PageValues, mu = 0, alt = "two.sided", cont = 0.95, var.eq = T, paired = F)
###################################################################
#3.3. ANOVA
#One-way anova
oneway <- aov(ExitRates ~ BounceRates, data = mini)
summary(oneway)
#Two-way anova
twoway <- aov(ExitRates ~ BounceRates + PageValues, data = mini)
summary(twoway)
###################################################################
#3.4. Building the linear regression model
#Build linear regression model
mini.model <- lm(mini$ExitRates ~ mini$BounceRates, data = mini)
###################################################################
#3.5. Testing for linearity
#Drawing Scatter plot
plot(mini$ExitRates,mini$BounceRates)
#Drawing Residuals vs Fitted plot
plot(mini.model, 1)
###################################################################
#3.6. Testing for normality
#split the plot window into half
par(mfrow = c(1, 3))
#Drawing histogram
hist(mini$ExitRates)
hist(mini$BounceRates)
hist(mini$PageValues)
#Drawing density curve
plot(density(mini$ExitRates))
plot(density(mini$BounceRates)) 
plot(density(mini$PageValues)) 
#merge the plot window into one
par(mfrow = c(1, 1))
#Drawing Q-Q plot
plot(mini.model, 2) 
#Shapiro-Wilk test
shapiro.test(mini$ExitRates)
shapiro.test(mini$BounceRates)
shapiro.test(mini$PageValues)
###################################################################
#3.7. Testing for homoscedasticity
#Drawing Scale-location plot
plot(mini.model, 3)
#Breusch-Pagan Test
bptest(mini.model)
###################################################################
#3.8. Testing for independence
#Durbin-Watson test
durbinWatsonTest(mini.model)
###################################################################
#3.9. Analyzing the linear regression model
#Summarize the detail of the linear regression model
summary(mini.model)
#Draw the plot of the linear regression model
plot(mini$BounceRates, mini$ExitRates)
abline(mini.model, col = "blue")