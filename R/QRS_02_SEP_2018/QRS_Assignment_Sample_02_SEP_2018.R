library(Hmisc)

loan_dat <- 
attach(loan_dat)
summary(loan_dat)

loan_dat_status <- subset(loan_dat,select=c("status","loan_amnt",
                          "annual_inc", "purpose", "home_ownership"))
summary(loan_dat_status)
attach(loan_dat_status)

describe(loan_dat_status)

loan_dat_status_charged <- subset(loan_dat_status, status=="Charged Off")
summary(loan_dat_status_charged)
describe(loan_dat_status_charged)
var(loan_dat_status_charged$loan_amnt)
sd(loan_dat_status_charged$loan_amnt)  
quantile(loan_dat_status_charged$loan_amnt, c(0.05,0.25,0.5,0.75,0.95))

loan_dat_status_default <- subset(loan_dat_status, status=="Default")
summary(loan_dat_status_default)
describe(loan_dat_status_default)

loan_dat_status_paid <- subset(loan_dat_status, status=="Fully Paid")
summary(loan_dat_status_paid)
describe(loan_dat_status_paid)
