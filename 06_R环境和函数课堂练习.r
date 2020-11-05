an_environment <- new.env()  #创建环境
an_environment

an_environment[["pythag"]] <- c(12,15,20,21) #向环境中分配变量
an_environment$root <- polyroot(c(6,-5,1))
assign(
  "moonday",
  weekdays(as.Date("1969/07/02")),
  an_environment
)
#检索变量
an_environment[["pythag"]]
an_environment$root
get("moonday",an_environment)
#列出环境内容
ls(envir = an_environment)
ls.str(envir = an_environment)

#检测变量是否在环境中
exists("pythag",an_environment)
#转换为列表
(a_list <- as.list(an_environment))

#转化为环境
as.environment(a_list)
list2env(a_list)
inherits = FALSE #取消在父环境中查找变量
nested_environment <- new.env(parent = an_environment)
exists("pythag",nested_environment,inherits = FALSE)

#定义全局变量
non_stormers <<- c(3,7,8,13,17,18,21)
#访问全局变量
get("non_stormers",envir = globalenv())

#访问基础环境
head(ls(envir = baseenv()),20)


##function(n,df,ncp)
##{
##if(missing(ncp))
##.External(C_rt,n,df)
##else rnorm(n,ncp)/sqrt(rchisq(n,df)/df)
##}
##<bytecode:0x0000000019738e10>
##<environment:namespace:stats>


hypotenuse <- function(x,y){
  sqrt(x^2+y^2)
}
hypotenuse <- function(x,y)sqrt(x^2+y^2)
hypotenuse(3,4)
hypotenuse(x=24,y=7)
hypotenuse <- function(x=5,y=12){
  sqrt(x^2+y^2)
}
hypotenuse()
formals(hypotenuse)
args(hypotenuse)
formalArgs(hypotenuse)
(body_of_hypotenuse <- body(hypotenuse))
deparse(body_of_hypotenuse)

normalize <- function(x,m=mean(x),s=sd(x)){
  (x-m)/s
}
normalized <- normalize(c(1,3,6,10,15))
mean(normalized)
sd(normalized)
normalize(c(1,3,6,10,NA))

normalize <- function(x,m=mean(x,na.rm = na.rm),s=sd(x,na.rm = na.rm),na.rm = FALSE){
  (x-m)/s
 }
normalize(c(1,3,6,10,NA))
normalize(c(1,3,6,10,NA),na.rm = TRUE)

normalize <- function(x,m=mean(x,...),s=sd(x,...),...){
  (x-m)/s
}
normalize(c(1,3,6,10,NA))
normalize(c(1,3,6,10,NA),na.rm = TRUE)


do.call(hypotenuse,list(x=3,y=4))
#创建三个数据框
dfr1 <- data.frame(x = 1:5,y = rt(5,1))
dfr2 <- data.frame(x = 6:10,y = rt(5,1,1))
dfr3 <- data.frame(x = 11:15,y = rbeta(5,1,1))
#可以一次拼接多个数据框或矩阵
do.call(rbind,list(dfr1,dfr2,dfr3))

#把函数作为参数
menage <- c(1,0,0,1,2,13,80)
mean(menage)
#简写为
mean(c(1,0,0,1,2,13,80))
#以匿名方式传递参数
x_plus_y <- function(x,y)x+y
do.call(x_plus_y,list(1:5,5:1))
#可以匿名
do.call(function(x,y)x+y,list(1:5,5:1))
emp_cun_dist_fn <- ecdf(rnorm(50))
is.function(emp_cun_dist_fn)

#当你在函数内部定义一个变量时，该函数中下面的语句将能访问到该变量。
#在R中，子函数也能访问到这个变量
f <- function(x9){
  y9 <- 1#定义一个变量
  #定义一个子函数
  g <- function(y9){
    (x9+y9)/2
  }
  g(x9)
}
f(sqrt(5))

f <- function(x8){
  y8 <- 1#定义一个变量
  g(x8)
}
#定义一个函数我们修改例子，把g定义在f以外，使g不是f的子函数
g <- function(y8){
  (x8+y8)/2
}
f(sqrt(5))

h <- function(x10){
  x10*y10
}
h(9)
y10 <- 19
h(9)

y11 <- 19
h2 <- function (x11){
  if(runif(1)>0.5)y11 <- 12
  x11*y11
}
replicate(10,h2(9))
