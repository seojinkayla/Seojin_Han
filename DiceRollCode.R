#number of dice rolls
d=10

#role two dice in 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

#number of dice rolls
d=100

#role two dice in 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

#number of dice rolls
d=1000

#role two dice in 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

#if I want to see not frenquency, but density

hist(dice_roll,freq=FALSE)