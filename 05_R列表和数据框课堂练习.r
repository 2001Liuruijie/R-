(a_list <- list(
  c(1,1,2,5,14,42),
  month.abb,
  matrix(c(3,-8,1,-3),nrow = 2),
  asin
))
names(a_list) <- c("catalan","months","involutary","arcsin")
a_list


(main_list <- list(
  middle_list = list(
    element_in_middle_list = diag(3),
    inner_list = list(
      element_in_inner_list = pi^(1:4),
      another_element_in_inner_list = "a"
    )
  ),
  element_in_main_list = log10(1:10)
))


is.atomic(list())
is.recursive(list())  
is.atomic(numeric())
is.recursive(numeric())
length(a_list)
length(main_list)
dim(a_list)
nrow(a_list)
ncol(a_list)
NROW(a_list)
NCOL(a_list)

l1 <- list(1:5)
l2 <- list(6:10)
l1[[1]]+l2[[1]]

l <- list(
  first = 1,
  second = 2,
  third = list(
    alpha = 3.1,
    beta = 3.2
  )
)
l<-list(first=1,second=2,thid=list(alpha=3.1,beta=3.2))
l[1:2]
l[-3]
l[c(TRUE,TRUE,FALSE)]
l[[1]]
l[("first")]
is.list(l[1])
is.list(l[[1]])
l$first
l$f
l[["third"]]["beta"]
l[["third"]]["beta"]
l[[c("third","beta")]]
is.list(l[["third"]][["beta"]])
is.list(l[["third"]]["beta"])
l[c(4,2,5)]
l[c("fourth","second","fifth")]
l[["fourth"]]
l$fourth
l[[4]]



busy_beaver <- c(1,6,21,107)
as.list(busy_beaver)
as.numeric(list(1,6,21,107))
(prime_factors <- list(
  two = 2,
  three = 3,
  four = c(2,2),
  five = 5,
  six = c(2,3),
  seven = -7,
  eight = -c(2,2,2),
  nine = c(3,3),
  ten = c(2,5)
))

new_factors <- unlist(prime_factors)
new_factors
new_factors[1]
new_factors[[1]]
is.list(prime_factors)
is.list(new_factors)
is.list(new_factors[1])
is.list(new_factors[[1]])
c(list(a=1,b=2),list(3))
c(list(a=1,b=2),3)
matrix_list_hybird <- cbind(list(a=1,b=2),list(c=3,list(d=4)))
matrix_list_hybird
str(matrix_list_hybird)



china_holiday <- list(
     Jan = "New Year's Day",
     Feb = "Spring Festival",
     Mar = NULL,
     Apr = "Qingming Festival",
     May = "May Day",
     Jun = "Dragon Boat Festival",
     Jul = NULL,
     Aug = NULL,
     Sep = "Moon Fwstival",
     Oct = "National Day",
     Nov = NULL,
     Dec = NULL
)
china_holiday
length(NULL)
length(NA)
is.null(NULL)
is.null(NA)
is.na(NULL)
china_holiday$Sep <- NULL##删除一个变量
china_holiday
china_holiday$Jun <- list(NULL)#将一个变量值设为NULL
china_holiday
(arguments_of_sd <- formals(sd))
class(arguments_of_sd)
pairlist()
list()


#创建数据框
(a_data_frame <- data.frame(
  x = letters[1:5],
  y = rnorm(5),
  z = runif(5)>0.5
))
class(a_data_frame)


y <- rnorm(5) 
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5
)
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5,
  row.names = NULL
)
#通过row.names一个向量为每行命名
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5,
  row.names = c("Jackie","Tito","Jermaine","Marlon","Michael")
)


#检索或更改行名称
rownames(a_data_frame)
colnames(a_data_frame)
dimnames(a_data_frame)
nrow(a_data_frame)
ncol(a_data_frame)
dim(a_data_frame)
length(a_data_frame)
names(a_data_frame)

data.frame(   #长度1、2和3，引发错误
  x = 1,   
  y = 2:3,  
  z = 4:6   #最长的输入，不需要循环
)


data.frame(
  "A column" = letters[1:5],
  "..." = rnorm(5),
  "..." = runif(5)>0.5,
  check.names = TRUE
)

data.frame(
  "A column" = letters[1:5],
  "..." = rnorm(5),
  "..." = runif(5)>0.5,
  check.names = FALSE
)

a_data_frame[2:3,-3] #选择数据框中前两列的第二个和第三个元素
a_data_frame[c(FALSE,TRUE,TRUE,FALSE,FALSE),c("x","y")]

a_data_frame[2:3,1]  #只选择1列
class(a_data_frame[2:3,-3])
class(a_data_frame[2:3,1])
a_data_frame$x[2:3]
a_data_frame[[1]][2:3]
a_data_frame[["x"]][2:3]
a_data_frame[a_data_frame$y>0|a_data_frame$z,"x"]
subset(a_data_frame,y>0|z,x)
t(a_data_frame)
class(t(a_data_frame))
another_data_frame <- data.frame(#与a_data_frame有相同的cols,不过次序不同
  z = rlnorm(5),   #对数分布的数
  y = sample(5),  #1到5随机排列的数
  x = letters[3:7]
)
rbind(a_data_frame,another_data_frame)
cbind(a_data_frame,another_data_frame)

merge(a_data_frame,another_data_frame,by = "x")
merge(a_data_frame,another_data_frame,by = "x",all = TRUE)
colSums(a_data_frame[,2:3])
colMeans(a_data_frame[,2:3])
