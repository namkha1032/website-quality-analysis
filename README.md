# About the project
This project analyses the quality of a website based on its Exit Rate, Bounce Rate and Page Value. The programming language used is [R](https://www.r-project.org/).
- Page Value is the average value that the page contributes to our website's revenue
- An Exit occurs when a user exits your website after landing on a page
- A Bounce occurs whenever a user enters the page and subsequently exits without visiting any other pages on that website or interacting with any of the elements on the page (e.g. commenting)
# About the data
We use the dataset compiled by [Sakar, C.O., Polat, S.O., Katircioglu, M. et al. Neural Comput & Applic (2018)](https://archive.ics.uci.edu/ml/datasets/Online+Shoppers+Purchasing+Intention+Dataset). The dataset predicts the correlation between visitor’s shopping intention and website abandonment likelihood, using variables like ExitRates, BounceRates and PageValues.
# Implementation progress
The progress will be conducted by the following 8 steps:
1. Sample the data. This step includes importing data, cleaning data and sampling data.
2. Compare the means of the data, using Boxplot and t-test.
3. Build the linear model, using R built-in command.
4. Test the linearity of the data, using Residuals vs Fitted plot.
5. Test the normality of the data, using Histogram, Density curve, QQ plot and Shapiro-Wilk test.
6. Test the homoscedasticity of the data, using Scale-location plot and Breusch-Pagan test.
7. Test the independence of the data, using Durbin - Watson test.
8. Analyze the linear model, using R built-in command.

For all the tests, we will use the confidence interval of 95% which is assumed by RStudio program by default.

More detailed about the progress can be found at [this report](https://github.com/namkha1032/website-quality-analysis/blob/main/report.pdf)
# References
- [1]: [Aryansh Gupta (2020), *Linear Regression Assumptions and Diagnostics in R*](https://rpubs.com/aryn999/LinearRegressionAssumptionsAndDiagnosticsInR)
- [2]: [Coding Prof (2022), *3 Easy Ways to Test for Heteroscedasticity in R [Examples]*](https://www.codingprof.com/3-easy-ways-to-test-for-heteroscedasticity-in-r-examples/)
- [3]: [Rebecca Bevans (2020), *Simple Linear Regression | An Easy Introduction & Examples*](https://www.scribbr.com/statistics/simple-linear-regression/)
- [4]: [Rebecca Bevans (2020), *Linear Regression in R | An Easy Step-by-Step Guide*](https://www.scribbr.com/statistics/linear-regression-in-r/)
- [5]: [Will Kenton (2021), *Durbin Watson Statistic Definition*](https://www.investopedia.com/terms/d/durbin-watson-statistic.asp)
- [6]: [Kent State University(2021), *SPSS Tutorials: Paired samples t test*](https://libguides.library.kent.edu/spss/pairedsamplesttest)
