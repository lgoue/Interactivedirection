library(psy)

t = read.csv('Results.csv', sep=',',header=TRUE, stringsAsFactors = TRUE)
t1 = t[t$Condition ==1,]
t2 = t[t$Condition ==2,]
summary(t)


#analysis of the wrong turns
boxplot(nb.wrong.turn ~ Condition, data=t,col="purple")
t.test(nb.wrong.turn ~ Condition, data=t)

model = lm(nb.wrong.turn ~ Condition + play_vg , data=t)
summary(model)

#analysis of the time to finish
boxplot(time.to.finish ~ Condition, data=t,col="purple")
t.test(time.to.finish ~ Condition, data=t)
model = lm(time.to.finish ~ Condition + play_vg , data=t)
summary(model)

#Analysis of the enjoy assistant score
cronbach(t[,c(5:5,7:8)])
t$ass_score = (t$enjoy_ass + t$interact_ass + t$useful_ass)/3
boxplot(ass_score ~ Condition, data=t,col="purple")
t.test(ass_score ~ Condition, data=t)
# not a good score, interact_ass seems to be the best
boxplot(interact_ass ~ Condition, data=t,col="purple")
t.test(interact_ass ~ Condition, data=t)

#Analisys of the repartition of video game ability
boxplot(play_vg ~ Condition, data=t,col="purple")
t.test(play_vg ~ Condition, data=t)

#Analysis of the perception score
cronbach(t[,c(9:13,14:15)])
t$perception_score = (t$satisfied + t$knowledgable + t$trust +t$use +t$recommand -t$map + t$listen)/25
boxplot(perception_score ~ Condition, data=t,col="purple")
t.test(perception_score ~ Condition, data=t)
model = lm(perception_score ~ Condition + play_vg + ass_score  , data=t)
summary(model)


# Analysis of map
boxplot(map ~ Condition, data=t,col="purple")
t.test(map ~ Condition, data=t)

# Analysis of listen
boxplot(listen ~ Condition, data=t,col="purple")
t.test(listen ~ Condition, data=t)

#time.to.coin.1
boxplot(time.to.coin.1 ~ Condition, data=t,col="purple")
t.test(time.to.coin.1 ~ Condition, data=t)

#time.to.coin.2
boxplot(time.to.coin.2 ~ Condition, data=t,col="purple")
t.test(time.to.coin.2 ~ Condition, data=t)

#time.to.coin.3
boxplot(time.to.coin.3 ~ Condition, data=t,col="purple")
t.test(time.to.coin.3 ~ Condition, data=t)

#time.to.coin.4
boxplot(time.to.coin.4 ~ Condition, data=t,col="purple")
t.test(time.to.coin.4 ~ Condition, data=t)

#time.to.coin.5
boxplot(time.to.coin.5 ~ Condition, data=t,col="purple")
t.test(time.to.coin.5 ~ Condition, data=t)

#time.to.coin.6
boxplot(time.to.coin.6 ~ Condition, data=t,col="purple")
t.test(time.to.coin.6 ~ Condition, data=t)

#time.to.coin.7
boxplot(time.to.coin.7 ~ Condition, data=t,col="purple")
t.test(time.to.coin.7 ~ Condition, data=t)

#time.to.coin.8
boxplot(time.to.coin.8 ~ Condition, data=t,col="purple")
t.test(time.to.coin.8 ~ Condition, data=t)

#time.to.coin.9
boxplot(time.to.coin.9 ~ Condition, data=t,col="purple")
t.test(time.to.coin.9 ~ Condition, data=t)

#time.to.coin.10
boxplot(time.to.coin.10 ~ Condition, data=t,col="purple")
t.test(time.to.coin.10 ~ Condition, data=t)

#time.to.coin.11
boxplot(time.to.coin.11 ~ Condition, data=t,col="purple")
t.test(time.to.coin.11 ~ Condition, data=t)

#time.to.coin.12
boxplot(time.to.coin.12 ~ Condition, data=t,col="purple")
t.test(time.to.coin.12 ~ Condition, data=t)



