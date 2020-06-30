"a"
setwd
iris
str (iris)
head(iris)
tail(iris)
cars
head(cars)
tail(cars)
mtcars
head(mtcars)
tail(mtcars)
airquality
head(airquality)
tail(airquality)
iris
str(iris)
select(iris, sepal.Length)
select (iris, Sepal.Length)
select(iris,Sepal.Length, Species)
pesh <- select(iris, Sepal.Length, Species)
iris$Sepal.Length
pl <- iris$Sepal.Length
pl
Pesh
pl <- iris$Petal.Length
mean(pl)
sd(pl)
iris$Species
s <- iris$Species
select(iris, Sepal.Width, Petal.Width, Sepcies)
select(iris, Sepal.Width, Petal.Width, Species)
erick <- select(iris, Sepal.Width, Petal.Width, Species)
str(erick)
str"erick"
erick
erick <- select(iris, Sepal.Width, Petal.Width, Species)
erick
erick$Petal.Width
pw <- erick$Petal.Width
mean(pw)
airquality
str(airquality)
select(airquality, Temp)
t <- select(airquality, Temp)
mean(t)
airquality$Temp
t <- airquality$Temp
mean(t)
iris
head(iris)
tail(iris)

filter1 <- filter(iris,Sepal.Length>5)
filter1
virginica<- filter(iris, Species=="virginica")
setosa
virginica
airquality
str(airquality)
head(airquality)
may <- filter(airquality,Month==5)
may
june <- filter(airquality, Month==6)
june
mean(june)
mean("june")
mean(june$Temp)
summary(june$Temp)
head(airquality)
col1 <- select(airquality, Wind, Temp, Month)
col1
row1 <- filter(col1, Month==5)
row1
[R, C]
airquality[1:6,1:6]
airquality[1:6,3:4]
subsetngbysquarebrackets
airquality[1:15, c("Wind", "Temp", "Ozone")]
sub <- airquality[1:15, c("Wind", "Temp", "Ozone")]
sub
mean(sub$Wind)
mtcars
subset temp and wind 10-15 for all months and get the summary airquality
airquality$Temp
airquality [airquality$Month ==7, c("Temp", "Wind")]
where "c" is a vector
creating a new variable
mutate(data, columnname)
airquality
mutate (airquality, Tempacc=Temp-30)
women 
mutate (women, BMi= weight/height)
women$BMi2= women$height = women$weight
women$BMi2
summary(women$height)
frequencies of categorical variables 
table(iris$Species)
table (mtcars$gear)
mutate(airquality, Tempcel=Temp-273)
data()
data(package = .packages(all.available = TRUE)
the %>%
  sel1 <- select (airquality, Temp, Wind, Month)
col1 <- filter(sel1, Month--5)
mut1 <- mutate(col, Tempac=Temp-30)

pipe1 <- airquality %>%
  select(Temp, Wind,Month)%>%
  filter(Month==5) %>%
  mutate(Tempac=Temp-30)
iris %>%
iris
head(iris)
pipe2 <- iris %>%
  select(Sepal.Length,Sepal.Width,Petal.Length) %>%
  filter(Petal.Length==3)%>%
  mutate(Petal.Lenth2=Petal.Length +10)
pipe2
#writing function
Circle <- function(r){
    Area=pi*r*r
    return(Area)
}
rectangle <- function(l,w){
  Area=l*w
  return(Area)
}
rectangle (20, 5)
rectangle
triangle <- function(a, c){
  b=sqrt(c^2- a^2)
  Area =(0.5*a*b)
  
  return (Area)
}
triangle (3, 5)
#group by functions and summarize
head (airquality)
#finding the mean of Temp in may, june, july, august, september 
mean(airquality [airquality$Month==5, "Temp"])
mean(airquality [airquality$Month==6, "Temp"])
mean(airquality [airquality$Month==7, "Temp"])
mean(airquality [airquality$Month==8, "Temp"])
mean(airquality [airquality$Month==9, "Temp"])
group_by (airquality, Month) %>% summarise(Meantemp=mean(Temp))
head(airquality)
head(iris)
group_by (iris,Sepal.Length)%>% summarise(Meansep=mean(Sepal.Length), Meanpet=mean(Petal.Length),Meanwit=mean(Petal.Width))
subset2<-group_by (iris,Sepal.Length)%>% summarise(Meansep=mean(Sepal.Length), Meanpet=mean(Petal.Length),Meanwit=mean(Petal.Width))
subset2
ToothGrowth
head (ToothGrowth)
group_by(ToothGrowth,supp)%>% summarise(Meanlen=mean(len), Meandos=mean(dose))
#checking missng values in a dataset
is.na(airquality$Ozone)
table(is.na(airquality$Ozone))
table(is.na(airquality$Solar.R))
is.na(airquality$Temp)
table(is.na(airquality$Temp))
#if any valuas are missing you drop the entire row
#use the square bracket method 
airquality [is.na(airquality$Ozone)==T, "Ozone"]
airquality [is.na(airquality$Ozone)==T, ]
airquality [is.na(airquality$Ozone)==F, ]
notmissing <- airquality[is.na(airquality$Ozone)==F, ]
is.na(notmissing$Solar.R)
table (is.na(notmissing$Solar.R))
clean <- notmissing[is.na(notmissing$Solar.R)==F, ]
head(clean)
table (is.na(clean$Ozone))
table(is.na(clean$Solar.R))
getwd()
practicedata <- read.csv("data1.csv")
practicedata
head (practicedata)
is.na(practicedata$Temp2)
table(is.na(practicedata$Temp2))
practicedata[is.na(practicedata$Temp2)==F, ]
presentdata <- practicedata[is.na(practicedata$Temp2)==F, ]
is.na(presentdata$Temp2)
table(is.na(presentdata$Temp2))
getwd()
plantdata <- read.csv("plant_data.csv")
plantdata
head(plantdata)
is.na(plantdata$Height)
table(is.na(plantdata$Height))
is.na(plantdata$Weight)
table(is.na(plantdata$Weight))
plantdata$group
plantdata[is.na(plantdata$Height)==F, ]
cleanheight <- plantdata[is.na(plantdata$Height)==F, ]
plantdata[is.na(plantdata$Weight)==F, ]
cleanweight <- plantdata[is.na(plantdata$Weight)==F, ]
table(cleanweight$group)
table(cleanheight$group)



#IMPUTATION -method 2 of handling missing values(using mean or median)
head(airquality)
mean(airquality$Ozone)
airquality[is.na(airquality$Ozone)==T, "Ozone"]
#LEAVING IT BLANK MEANS THAT YOU ARE WORKING WITH THE ENTIREDATA
#including ozone alone is because we only want to replace it 

mean(airquality$Ozone, na.rm= T)
airquality[is.na(airquality$Ozone)==T, "Ozone"] <- mean(airquality$Ozone, na.rm= T)
head (airquality)
airquality[is.na(airquality$Ozone)==T, "Ozone"] <- median(airquality$Ozone, na.rm = T)
head (airquality)
median(airquality$Ozone, na.rm = T)

median(airquality$Ozone)
median(airquality$Ozone, na.rm = T)
mean(airquality$Ozone, na.rm= T)

titanic<- read.csv("titanic_data.csv")
getwd()
titanic
head (titanic)
is.na(titanic$Age)
table(is.na(titanic$Age))
is.na(titanic$Fare)
table(is.na(titanic$Fare))
#imputation mean replacing with mean or median
mean(titanic$Age, na.rm=T)
titanic[is.na(titanic$Age)==T, "Age"] <- mean(titanic$Age, na.rm=T)
head(titanic)
table (titanic$Survived)
table(titanic$Pclass)
table (titanic$Sex)
table(titanic$Embarked)
table(titanic$Sex, titanic$Survived)

#ggplot (dataset, aes(x= variable, y= variable))
#geom_boxplot/ geom_line/ geom_bar
head(cars)
ggplot(cars, aes(x= speed, y= dist))+
geom_point()+
  labs(title= "Dist against Speed", 
       x= "Speed",
       y="Distance",
       subtitle= "Data source: ggplot",
       capion="by Erick")
women
head(women)
ggplot(women, aes (x=height, y=weight))+
  geom_point()
labs(title= "height against weight",
     x= "height",
     y="weight",
     subtitle="Data source: ggplot",
     caption="by Erick")

head(airquality)
ggplot(airquality, aes (x=Wind, y=Temp))+
  geom_point()+
  theme_classic()

labs(title= "Wind against Temp",
     x= "Wind",
     y="Temp",
     subtitle="Data source: ggplot",
     caption="by Erick")+
  theme_classic() 
Kenya

gapminder
head(gapminder)
gapminder$gdpPercap

filter(gapminder,"gdpPercap")
kenya <- filter(gapminder,gdpPercap)

gapminder[1:50, c("gdpPercap")]
kenya <- gapminder[1:50, c("gdpPercap")]
kenya
structure (kenya)
table (kenya)

#plotting
ToothGrowth
head(ToothGrowth)
str(ToothGrowth)
is.na(ToothGrowth$len)
is.na(ToothGrowth$supp)
table(is.na(ToothGrowth$dose))

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_boxplot()
ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_boxplot(width= 0.2)

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_jitter()
ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_jitter(width=0.2)

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_violin()
ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_violin(width=0.2)
labs(title= "supp against len", 
     x= "supp",
     y="len",
     subtitle= "Data source: ggplot",
     capion="by Erick")

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_col(width=0.2)
ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_col(width=0.2, fill= "turquoise")

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_violin(width=0.2, fill="red")

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_boxplot(width= 0.2, fill="green")

#checking distribution- we use density plot or histograms 

head(airquality)
ggplot(airquality, aes(x=Temp))+geom_density()
ggplot(airquality, aes(x=Temp))+geom_histogram()

ggplot(dat, aes(x=Month, y=MeanTemp))+ geom_col()+ylim(40,90)

#differentiating betweeen the geombars and gecollumns

ggplot(ToothGrowth, aes(x=supp, y=len))+
  geom_bar()


titanic
head (titanic)
ggplot(titanic, aes(x=Sex))= geom_bar()
head(iris)
tail(iris)
is.na(iris$Sepal.Length)
table(is.na(iris$Sepal.Length))
