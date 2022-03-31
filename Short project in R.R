# Dawid Gołąb

# typy danych

x<-NULL
class(x)

a<-2.33
class(a)
print(a)

s<-15
class(s)
mode(s)
str(s)

d<-TRUE
class(d)

imie<-"kamil"
class(imie)

wzrost<-c("wysoki","średni","niski","wysoki","średni",
          "wysoki","średni","wysoki","średni","niski"
          ,"niski")
class(wzrost)
table(wzrost)
str(wzrost)

wz<-as.factor(wzrost)
class(wz)
table(wz)
str(wz)
mode(wz)

data<-as.Date("2022-03-13")
print(data)
class(data)
data2<-data+7
print(format(data2,"%a %b %d"))

# obiekty w R

# wektor
x<-seq(25,45,3)
class(x)
mode(x)
str(x)
y<-c(x,"ala")
class(y)
str(y)
lista<-list(x=x,a="ala")
class(lista)
str(lista)

xx<-sample(x,150,replace = T)
str(xx)
y<-sample(c("Anna","Marek","Arek","Marta","Sonia","Adam","Kamil"),150, replace=T)
str(y)
zz<-seq(as.Date("2022-03-13") ,by=1,length.out=150)
str(zz)

dane<-data.frame(wiek=xx,imie=y,data=zz)
str(dane)
View(dane)

getwd() #sprawdzanie sciezki do projektu

gettwd()
mieszkania<-read.csv(file = "mieszkania-pow (1).csv",sep=";")
str(mieszkania)
mieszkania$d<-as.Date(mieszkania$data,origin="1900-01-01")
str(mieszkania)

# podstawowe statystyki opisowe:

mean(mieszkania$cena)
median(mieszkania$cena)
quantile(mieszkania$cena)
summary(mieszkania$cena)

h<-hist(mieszkania$cena,plot = F)
print(h)

dane<-read.csv(file="http://artemis.wszib.edu.pl/~basiura/szeregi_d.csv", sep=";",dec=".", head=T)
attach(dane)
plot(dane$szereg10,type="l",col="green")
hist(dane$szereg10,breaks = 25,col="lightblue",border="red",probability = T)
grid()
rug(dane$szereg10,col="red")
lines(density(dane$szereg10),lty=2,lwd =3, col="red")
curve(dnorm(x,mean = mean(dane$szereg10), sd = sd(dane$szereg10)),add=T,col="darkgreen",lty=3,lwd=3)


# miary rozproszenia dla mieszkan 

max(mieszkania$cena)-min(mieszkania$cena)

quantile(mieszkania$cena)[4]-quantile(mieszkania$cena)

var(mieszkania$cena)
sd(mieszkania$cena)

mean(mieszkania$cena)

sd(mieszkania$cena)/sqrt(length(mieszkania$cena))

mad(mieszkania$cena)

sd(mieszkania$cena)/mean(mieszkania$cena)

boxplot(mieszkania$cena,horizontal = T,col="lightblue", border = "red")
