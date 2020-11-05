#4-1
n = c(1:20)
a <- n*(n+1)/2
names(a) <- letters[1:20]
a[c(1,5,9,15)]

#4-2
a <- c(11,10,9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6,7,8,9,10,11)
diag(a)

#5-1
(a_list <- list(
  c(1,4,9),
  c(16),
  c(25),
  c(36),
  c(49),
  NULL,
  c(64),
  NULL,
  c(81),
  NULL
))

#5-2
(a_data_frame <- data.frame(iris))
colMeans(a_data_frame[1:4])

#5-3
a <- data.frame(id = 1)
b <- beaver1
c <- data.frame(id=2)
d <- beaver2
x = cbind(a,b)
y = cbind(c,d)
z = rbind(x,y)
z


#6-1
multiples_of_pi <- new.env()
multiples_of_pi
multiples_of_pi[["two_pi"]] <- 2*pi
multiples_of_pi$three_pi <- 3*pi
assign(
  "four_pi",
  c(4*pi),
  multiples_of_pi
)
ls.str(envir = multiples_of_pi)

#6-2
a <- function(x%%2){
  ifelse(x == 0,TRUE,FALSE)
  ifelse(is.finite(a)==FALSE)  a <- NA
}

#6-3
hypotenuse <- function(x=5,y=12){
  sqrt(x^2,y^2)
}
hypotenuse()
args(hypotenuse)
(body_of_hypotenuse <- body(hypotenuse))


