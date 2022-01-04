library(psy)

t = read.csv('Results.csv', sep=',',header=TRUE, stringsAsFactors = TRUE)
t1 = t[t$Condition ==1,]
t2 = t[t$Condition ==0,]
summary(t)

#Analysis of the enjoy assistant score
cronbach(t[,c(7:7,5:5)])
t$ass_score = (t$enjoy_ass + t$interact_ass )/2
boxplot(ass_score ~ Condition, data=t,col="purple")
t.test(ass_score ~ Condition, data=t)

#Analysis of sex variable
boxplot(sex ~ Condition, data=t,col="purple")
t.test(sex ~ Condition, data=t)

#Analisys of the reparation of video game ability
boxplot(play_vg ~ Condition, data=t,col="purple")
t.test(play_vg ~ Condition, data=t)

#analysis of the time to finish
boxplot(time.to.finish ~ Condition, data=t,col="purple")
t.test(time.to.finish ~ Condition, data=t)
model = lm(time.to.finish ~ Condition + play_vg +ass_score, data=t)
summary(model)

#analysis of the wrong turns
boxplot(nb.wrong.turn ~ Condition, data=t,col="purple")
t.test(nb.wrong.turn ~ Condition, data=t)
model = lm(nb.wrong.turn ~ Condition + play_vg + ass_score , data=t)
summary(model)

#analysis of the number of look at the map
boxplot(nb.look.at.the.map ~ Condition, data=t,col="purple")
t.test(nb.look.at.the.map ~ Condition, data=t)
model = lm(nb.look.at.the.map ~ Condition + play_vg + ass_score , data=t)
summary(model)

#Analysis of the perception score
cronbach(t[,c(9:13,14:15)])
t$perception_score = (t$satisfied + t$knowledgable + t$trust +t$use +t$recommand -t$map + t$listen)/25
boxplot(perception_score ~ Condition, data=t,col="purple")
t.test(perception_score ~ Condition, data=t)
model = lm(perception_score ~ Condition + play_vg + ass_score  , data=t)
summary(model)

