#2
fv <- c(20,32,35,34,40,51,52,56,57,68)
sv <- c(23,34,36,44,42,51,54,67,54,62)
fit <- lm(sv~fv)
summary(fit)
(a) plot(fv,sv)
(b) #The amount of dollars spent on first visit and second visit seems to have a strong, positive linear relationship between.
(c) cc <- cor(fv,sv)
(d) se <- sqrt((1-cc^2)/(length(fv)-2))
    se
    #This describes this sample correlation coefficient explains the population parameter well.
    #The correlation driven in part (c) refers that there is a strong correlation between the dollars spent on first visit and second visit.
(e) rt <- cor.test(fv,sv)
    rt

#3
(a) sv2 <- sv+30 
    sv2 
    cor(fv, sv2)
    #The correlation coefficient adding 30 dollars on second visit still offers the same value. Therefore, it isn't influenced on adding a constant.
(b) fv2 <- fv*100 
    fv2 
    cor(fv2,sv)
    #The correlation coefficient multiplying 100 on first visit also offers the same value. It can be interpreted as multiplying a constant on data doesn't change the value of correlation coefficient.
#4
hr <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mr <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)
(a) plot(hr,mr) 
    # This two variables have positive linear relationship. However, there is an extreme value on upper right.
(b) fit2 <- lm(mr~hr)
    summary(fit2)
    abline(fit2)
(c) #H0: Home range size does not predict infant mortality. (beta =0)
    #H1: Home range size does predict infant mortality. (beta != 0)
    summary(fit2)
    #We can reject the null hypothesis on significance level a=0.05.
(d) hr_p <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
    mr_p <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,25)
    fit2_p <- lm(mr_p~hr_p)
    abline(fit2_p)
    summary(fit2_p)
    #We can still reject the null hypothesis, but not that strongly as before. The slope changes into 6.600 from 9.955
