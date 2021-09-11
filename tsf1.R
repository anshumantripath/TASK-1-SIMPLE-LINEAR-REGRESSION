#DATA SET IS GIVEN IN TEXT FILE*
#IMPORTING THE DATA SET*

mydata <- read.table(file.choose(), header=TRUE , sep="\t")
print(mydata)



# VIEW THE DATA SET

mydata


# CHECKING THE VARIABLES OF DATA . WE HAVE DEPENDENT VARIBLE(SCORES) AND ONE INDEPENDENT VARIABLE(HOURS) .

# CHECKING THE SUMMARY OF DATA SET.

names(mydata)

summary(mydata)

# DATA VISULIZATION 

# SIMPLE SCATTER PLOT BETWEEN SCORES AND HOURS

# SCATTER PLOT SHOWS INCREASING TREND


attach(mydata)
plot(SCORES ~ HOURS  , col ="red" ,  xlab="Hours" , ylab= "Scores" , main="Scatter plot between Scores and Hours")


# FITTING THE LINEAR MODEL
# PLOTTING THE LINEAR REGRESSION LINE 
# LINEAR REGRESSION LINE IS SHOWING INCREASE TREND . SO WE CONCLUDE AS THE NUMBER OF HOURS INCREASES , SCORES IS ALSO INCREASE.


attach(mydata)
fit = lm(SCORES~HOURS)
plot(SCORES ~ HOURS  , col ="red" ,  xlab="Hours" , ylab= "Scores" , main="Scatter plot and Linear Regression Line between Scores and Hours")
abline(fit , col="green" , lwd =3)


# NOW WE OBSERVE SUMMARY OF LINEAR REGRESSION FIT

summary(fit)


# CONCLUSIONS FROM SUMMARY --
-----------------------------
  
  # 1. RESIDUAL STANDARD ERROR IS 5.603 WHICH IS SMALL  SO WE CAN CONCLUDE THAT SIMPLE LINEAR REGRESSION LINE FITS THE DATA VERY WELL.
  
  # 2. R^2 - STATISTIC IS 0.9529 WHICH IS SUFFICIENTLY LARGE WHICH MEANS 95.29% OF VARIABLITY IN SCORES HAS BEEN EXPLAINED BY HOURS .
  
  # 3. A SMALL P- VALUE INDICATES THAT WE SHOULD REJECT OUR NULL HYPOTHESIS AND CONCLUDE THAT THERE IS LINEAR RELATIONSHIP BETWEEN SCORES AND HOURS.
  
  ## CONFIDENCE INTERVAL ---
  
  
  
confint(fit)



# CHECKING MODEL ASSUMPTIONS
------------------------------
  
  # PLOTTING RESIDUALS
  ---------------------
  
  
  plot(predict(fit) , residuals(fit) , col ="orange" , pch= 8)
plot(predict(fit) , rstudent(fit) , col ="orange" , pch= 8)

# CONCLUSIONS---
---------------
  
  # On the basis of residual plot, we can see a structure of errors. we can observe that errors are completely structureless.
  
  -------------------------------------------------------------------------------------------------------------------------------------------------
  ## PREDICTION OF SCORES FOR 9.25 HOURS PER DAY ----


predict(fit, data.frame(HOURS =c(9.25)))

#-------------------------------------------------------------------------------------------------------------------------------------------------
