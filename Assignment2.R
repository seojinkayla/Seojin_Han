#1.(a)sample mean score
score <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95)
mean(score)
#This estimates population mean of all games by the Portland Trailblazers.

#1.(b)
#Not sure yet. We have to run a hypothesis testing to measure whether this sample mean estimates the population parameter well.

#1.(c)standard error for sample estimate
se <- sd(score)/sqrt(length(score))
se

#1.(d)the meaning of standard error
#It refers to the standard deviation of sample mean given in the question 1.(a)

#1.(e)95% confidence interval for the population mean
library(MASS)
e=qt(.95,df=length(score)-1)*se
e
xbar=mean(score)
xbar + c(-e, e)

#1.(f)interpretation for the interval calculated in part (e)
#95% of the samples from the population will exist between (87.17929, 93.54071).

#2.
male <- c(220.1, 218.6,	229.6, 228.8, 222.0, 224.1, 226.5)
female <-c(223.4, 221.5, 230.2, 224.3, 223.8, 230.8)
hist(male)
hist(female)

mean.m <- mean(male)
mean.f <- mean(female)

se.m <- sd(male)/sqrt(length(male))
se.f <- sd(female)/sqrt(length(female))

e.m <-qt(.95, df=length(male)-1)*se.m
e.f <-qt(.95, df=length(female)-1)*se.f

mbar <- mean(male)
c.i.male <- mbar + c(-e.m, e.m)
c.i.male
fbar <- mean(female)
c.i.female <- fbar + c(-e.f, e.f)
c.i.female

t.test(male, female, alternative="two.sided")
#We cannot reject the null hypothesis that male and female cholesterol concentration level is same.

#3.(a)False. P-value doesn't tell anything about the size of the effect.
#3.(b)True. Because the null hypothesis was rejected.
#3.(c)False. Because a was 0.05.
#3.(d)False. It isn't known in this example.
#3.(e)True. 

#4.
person.a <- c(248, 236, 269, 254, 249, 251, 260, 245, 239, 255)
person.b <- c(380, 391, 377, 392, 398, 374)
person.a2 <- 1.5*person.a

t.test(person.a2, person.b)

#5. Standard deviation is a descriptive statistic which shows how much data is scattered around the population mean. In comparison, standard error is the standard deviation of the sampling mean, and this becomes smaller when the number of samples gets bigger.
