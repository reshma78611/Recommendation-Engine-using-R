install.packages('recommenderlab',dependencies = TRUE)
install.packages('Matrix')
install.packages('caTools')
install.packages('plyr')
library(recommenderlab)
library(Matrix)
library(caTools)
library(plyr)
library(readr)

movie_rate_data<-read.csv('C:/Users/HP/Desktop/datasets/Movie.csv')
View(movie_rate_data)
str(movie_rate_data)
hist(movie_rate_data$rating)
#to build rating matrix b/w movies and users
movie_rate_data_matrix<-as(movie_rate_data,'realRatingMatrix')
#to see the matrix
movie_rate_data_matrix@data
#to build recommendation model
movie_recomm_model2<-Recommender(movie_rate_data_matrix,method='UBCF')
#to predict each user 5 recommended movies
recommended_items2<-predict(movie_recomm_model2,movie_rate_data_matrix,n=5)
#to see each users 5 recommended movies
d<-as(recommended_items2,'list')
d
df<-ldply(d,data.frame)
