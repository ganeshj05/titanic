library(Hmisc)

#Load Data
loan_dat <- read.csv(file="E:/I/datascience/module3/datascience/R/QRS_02_SEP_2018/loan_data_new.csv",header=True)
attach(loan_dat)
summary(loan_dat)

loan_dat_status <- subset(loan_dat,select=c("status","loan_amount",
                          "annual_income", "purpose", "home_ownership"))
summary(loan_dat_status)
attach(loan_dat_status)

describe(loan_dat_status)

#Get charged off stats
loan_dat_status_charged <- subset(loan_dat_status, status=="Charged Off")

#loan_dat_status_charged = filter(loan_dat_status,status=="Charged Off")

summary(loan_dat_status_charged)
describe(loan_dat_status_charged)
##This will get stats for loan amount
var(loan_dat_status_charged$loan_amount)
sd(loan_dat_status_charged$loan_amount)  
quantile(loan_dat_status_charged$loan_amount, c(0.05,0.25,0.5,0.75,0.95))

##This will get stats for Anual income
var(loan_dat_status_charged$annual_income)
sd(loan_dat_status_charged$annual_income)  
quantile(loan_dat_status_charged$annual_income, c(0.05,0.25,0.5,0.75,0.95))

boxplot(loan_dat_status_charged$loan_amount, main="Box plot for ")



#Get Default stats
loan_dat_status_default <- subset(loan_dat_status, status=="Default")
summary(loan_dat_status_default)
describe(loan_dat_status_default)
var(loan_dat_status_default$loan_amount)
sd(loan_dat_status_default$loan_amount)
quantile(loan_dat_status_default$loan_amount, c(0.05,0.25,0.5,0.75,0.95))
##This will get stats for Anual income
var(loan_dat_status_default$annual_income)
sd(loan_dat_status_default$annual_income)  
quantile(loan_dat_status_default$annual_income, c(0.05,0.25,0.5,0.75,0.95))




#Get Default stats
loan_dat_status_paid <- subset(loan_dat_status, status=="Fully Paid")
summary(loan_dat_status_paid)
describe(loan_dat_status_paid)
var(loan_dat_status_paid$loan_amount)
sd(loan_dat_status_paid$loan_amount)
quantile(loan_dat_status_paid$loan_amount, c(0.05,0.25,0.5,0.75,0.95))
##This will get stats for Anual income
var(loan_dat_status_paid$annual_income)
sd(loan_dat_status_paid$annual_income)  
quantile(loan_dat_status_paid$annual_income, c(0.05,0.25,0.5,0.75,0.95))


##boxplot
boxplot(loan_dat_status_charged$loan_amount,loan_dat_status_default$loan_amount,loan_dat_status_paid$loan_amount, 
	main="Loan Amount distribution
	     as per Status
	Charged Off , default and paid")
	
##boxplot
boxplot(loan_dat_status_charged$loan_amount,loan_dat_status_charged$annual_income, 
	main="Loan Amount distribution
	     as per Status
	Charged Off , default and paid")


	
boxplot(loan_dat_status_charged$annual_income,loan_dat_status_default$annual_income,loan_dat_status_paid$annual_income, 
	main="Annual income
	     as per Status
	Charged Off , default and paid")
	
	