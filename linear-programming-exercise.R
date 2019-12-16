#18523089 [MUHAMMAD MELLANO A]
#16523158 [FAZA MUHAMMAD RAIHAN]




library(lpSolve)
#Import lpSolve library for Linear Programming

#Number 1

f.obj <- c(3, 9)
#From (max and min z=3x+9y)

f.con <- matrix(c(1, 3,
                  1, 1,
                  1, 0),nrow=3,byrow=TRUE)
#Matrix corresponding to coefficients goes here

f.dir <- c("<=",
           ">=",
           "<=")
#Unequality signs

f.rhs <- c(60,
           10,
           1)

#Final value(z)
lp("max",f.obj, f.con, f.dir, f.rhs)
lp("min",f.obj, f.con, f.dir, f.rhs)

#Variables of final values
lp("max",f.obj, f.con, f.dir, f.rhs)$solution
lp("min",f.obj, f.con, f.dir, f.rhs)$solution

#Sensitivities
lp("max",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$sens.coef.from
lp("max",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$sens.coef.to

lp("min",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$sens.coef.from
lp("min",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$sens.coef.to

#Dual values
lp("max",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals
lp("min",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals

#Dual lower and upper limits
lp("max",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals.from
lp("max",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals.to

lp("min",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals.from
lp("min",f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)$duals.to




#No 2

f.obj <- c(8000, 12000)
#From (max and min z=3x+9y)

f.con <- matrix(c(9, 12,
                  1, 3),nrow=2,byrow=TRUE)
#Matrix corresponding to coefficients goes here

f.dir <- c("<=",
           "<=")
#Unequality signs

f.rhs <- c(180,
           30)

#Final value(z)
final <- lp("max",f.obj, f.con, f.dir, f.rhs)
final2 <- (final$objval*7)
print (paste("Maximum profit: ", final2, sep=""))
