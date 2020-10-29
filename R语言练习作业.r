x = atan(1/1:1000)
x
y = x
z = 1/tan(y)
z
x = c(1:1000)
x==z
identical(x,z)
all.equal(x,z)
all.equal(x,z,3)
true_and_missing = c(TRUE,NA)
false_and_missing = c(FALSE,NA)
mixed = c(TRUE,FALSE,NA)
any(true_and_missing)
all(true_and_missing)
any(false_and_missing)
all(false_and_missing)
any(mixed )
all(mixed )


class(Inf)
typeof(Inf)
mode(Inf)
storage.mode(Inf)
class(NA)
typeof(NA)
mode(NA)
storage.mode(NA)
class(NaN)
typeof(NaN)
mode(NaN)
storage.mode(NaN)
class("")
typeof("")
mode("")
storage.mode("")
a = sample(c("dog","cat","hamster","goldfish"),1000,replace = TRUE)
a[1:20]
b = factor(a)
summary(b)
eggplant = 1
cucumber = 2
carrot = 3
ls(pattern = "a")
