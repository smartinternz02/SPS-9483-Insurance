data=read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
data
plot(data)
sjPlot::plot_scatter(data,Hours,Scores)
sjPlot::plot_scatter(data,Hours,Scores,fit.line = lm)
cor(data)
model=lm(Scores~Hours,data = data)
summary(model)
jtools::summ(model)
predict(model,newdata = data.frame(Hours=9.25))

