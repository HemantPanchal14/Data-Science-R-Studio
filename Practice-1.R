# STARTED learning R STUDIO

#will import file mba.csv as CASE STUDY in R-Studio

read.csv(file.choose())

# Will get popup window for the selection of file than click import it's DONE

#2nd step,will ASSIGN as mba
mba=read.csv(file.choose())

#3rd step -How to see whole table data?
View(mba)

# 2nd way to import file?=  read.csv ("copy paste file path")
# 3rd way to import file?= go to Environment page,select 'import dataset',select text(base)or(readr) 
# To see variables inside mba table?
str(mba)

# To see by default column top data?able to see first 6 nos data
head(mba) 
# To see only 3 data column top data?able to see first 3 nos data
head(mba,3)
# By using Head(mba,773)we cannot see whole table data it has limitation

# To see bottom data inside table ? able to see btm 6 nos data
tail(mba)
# To see bottom 3 data inside table ? able to see btm 3 nos data
tail(mba,3)

# STATISTICS

# calculate MEAN
mean(mba$gmat)

# calculate MEDIAN
median(mba$gmat)
  
# MODE- R does not have MODE function we have to creat
my_mode <- function(x) {                     # Create mode function 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}
my_mode(mba$gmat)

# Another way to find MODE is,here will get frequency of numbers got repeated so here number 710 repeated 178 times. 
table(mba$gmat)

#Histogram Graph
hist(mba$gmat)

# Import package 'moments' to calculate below things

# Skewness Calculation   = Ans= left skew
skewness(mba$gmat)

# Kurtosis calculation   = Ans = Leptokurtic
kurtosis(mba$gmat)

# Boxplot
boxplot(mba$gmat)   = Ans= left skew with outlier

# Variance = spread of single variable
var(mba$gmat)

# Covariance = spread of two variables
cov(mba$workex,mba$gmat)
 
# STANDARD DEVIATION= dispersion of set of data from its mean Xbar
sd(mba$gmat)

# Conclusion w.r.t. "mba" table and column name "gmat" the relationship is like
#mean value is 711,sd is 29 and var is 860 so will concude as below
# 711 + 29  OR 711-29 it's kind of RANGE / DATA DISTRIBUTION

# COvariance = Variance will get same result as variance (one variable square by formula)
cov(mba$gmat,mba$gmat)

# inbuild data review
data(Titanic)
View(Titanic)
