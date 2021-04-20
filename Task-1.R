#THE SPARK FOUNDATION - INTERNSHIP APRIL,2021
#DATA SCIENCE & BUSSINESS ANALYTICS
#TASK-1 Prediction using supervised machine learning
#what will be the predicted score if a student studies for 9.25hrs/day?

#importing the data
student<-read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
student
names(student)
dim(student)
is.null(student)

#summary of the student data
summary(student)

#simple linear regression model(lm)/ formula= lm(target variable~predictor variable , data=data source) 
lm(scores~hours,data=student)
model<-lm(scores~hours,data=student)
model

#visualizing the data
plot(student)
abline(model,col="red")

#summary of the simple linear regression model
summary(model)

#predicting the score
test<-data.frame(hours=9.25)
prediction<-predict(model,test)
prediction
#from the above prediction ,we can say that if a student studies for 9.25hrs/day ,then a student will score = 92.90985





