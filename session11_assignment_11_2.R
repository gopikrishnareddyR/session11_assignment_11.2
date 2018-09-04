#session11_assignment_11.2

#1. Use the given link below and locate the bank marketing dataset. Data Set Link 
#Perform the below operations: 

library(readr)

bankma<-read.csv("C:/Users/Swapna/Documents/R files test/bank-additional-full.csv", sep = ";", stringsAsFactors = TRUE)
View(bankma)



#a. Is there any association between Job and default? 
with(bankma, prop.table(table(job,default)))
with(bankma, chisq.test( job, default)) 

    #outcome
#Pearson's Chi-squared test

data:  job and default
X-squared = 1927.7, df = 22, p-value < 2.2e-16


#b. Is there any significant difference in duration of last call between people having housing loan or not? 

with(bankma, chisq.test(duration,housing)) 
with(bankma, table(duration,housing)) 
  
#outcome

#Pearson's Chi-squared test

data:  duration and housing
X-squared = 3162.3, df = 3086, p-value = 0.1657



#c. Is there any association between consumer price index and consumer? 
with(bankma, prop.table(table(cons.price.idx,cons.conf.idx))) 
with(bankma, chisq.test(cons.price.idx,cons.conf.idx)) 

    #outcome
   
#Pearson's Chi-squared test

data:  cons.price.idx and cons.conf.idx
X-squared = 1029700, df = 625, p-value < 2.2e-16

#d. Is the employment variation rate consistent across job types?

 
with(bankma,table( job,emp.var.rate) ) 
with(bankma,chisq.test( job,emp.var.rate))

    #outcome


#Pearson's Chi-squared test

data:  job and emp.var.rate
X-squared = 4676.8, df = 99, p-value < 2.2e-16

#e. Is the employment variation rate same across education? 

with(bankma,table(emp.var.rate,education)) 
with(bankma,chisq.test(emp.var.rate, education))

    #outcome
#Pearson's Chi-squared test

data:  emp.var.rate and education
X-squared = 1451.6, df = 63, p-value < 2.2e-16


#f. Which group is more confident? 
  