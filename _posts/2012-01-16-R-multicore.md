---
title: Using multiple processor cores in R-Projet
layout: post
---
My laptop is equipped with a Core i7 processor with 4 cores that can execute in parallel 8 processes. 

My [R-project](http://www.r-project.org/ "The R Project for Statistical Computing") computations use only one single core, if I use the default instructions. I have ended up by thinking that it is a pity that other cores are just sitting idle (sort of), instead of contributing to the speed of my computations, even if I do not run yet really heavy ones in my research. As a consequence, I have started to look for an easy way to use all cores in [R-project](http://www.r-project.org/ "The R Project for Statistical Computing"). 

And, indeed, there is an easy solution to this problem. It uses the **[doMC](http://cran.r-project.org/web/packages/doMC/index.html "CRAN - Package doMC") library**, and the instructions foreach and **`%dopar%`**.
For example, for computing linear models with different dependent variables and a given set of exogenous ones, one can do the following computations:



    library(doMC) # There are other parallel computing libraries
    registerDoMC() # You must register one of them for foreach
    getDoParWorkers() # Indicates you how many cores have been detected 
                      # by registerDoMC()



Suppose that you have a dataset called `mydata`, containing the dependent variables `y1, y2, y3`, and the independent variables, `x1,x2,x3`.

We can execute in parallel the estimation of linear models of each y on the set of independent variables, by executing the following code:



    myVariableList <- c(\"y1\", \"y2\", \"y3\")  
    results <- foreach(i = 1:length(myVariableList), .errorhandling=\"stop\", .inorder=TRUE)
    %dopar% {
        model <- lm(as.formula(paste(myVariableList[i],\"~x1+x2+x3\")),data=mydata)
        return(model)
            }



**`%dopar%`** executes these estimations on different cores, in parallel and a list of the estimated models is saved in the variable results.


We can now look at the characteristics of the estimated models, by printing them successively on the output of R:



`for (i in 1:length(results)) { print(summary(results[[i]])) }`



Voilà!

Of course, this possibility is especially useful for more complex computations, like stepwise regressions with many independent variables, that can take some time, or regression trees with big datasets, etc.