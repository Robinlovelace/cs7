2 + 5 * 2

(2 + 5) * 2


ls()

x = 1:9

sqrt(x = x)

# this is a comment - use them!
# use TAB autocomplete for arguments
plot(x = x, main = "Some data", xlab = "xlab")

# style
plot(x=x,main ="Some data")
# Ctl-alt-A can format - you won't need to!
plot(x = x, main = "Some data")

a <- 1
1 -> a
x_thingy = 1:9
xx_thingy = x_thingy^2
C = "C"
# comment out broken code
# a + C # use Ctl-Shift-C -
# tip: use p+Ctl+UP to search history

# tip
x <- data.frame(x = 1:3, y = letters[1:3])
x
# only keep useful code in console - delete rest
x$x_sqrd = x$x^2

# in console: z = x$x_sqrd^3
# plot(x$x, z)
# only save reproducible script files

# download the dataset 'Pupil/Student - teacher ratio and average class' from eurostat
# for more developed API see https://github.com/rOpenGov/eurostat
tmp <- getEurostatRCV(kod = "educ_iste")
head(tmp)

# download the dataset 'People killed in road accidents' from eurostat
# and plot a maptable for selected countries
# for more developed API see https://github.com/rOpenGov/eurostat
library(ggplot2)
# to use functions from a package without library()
# t1 <- SmarterPoland::getEurostatRCV("tsdtr420")
library(SmarterPoland) # load package
t1 <- getEurostatRCV("tsdtr420")

ggplot(t1, aes(time, value, color=sex, group=sex)) +
           geom_line() + facet_wrap(~geo)

powiaty = SmarterPoland::getMPpowiaty() # enter tab to see functions

# data classes
x = 1:5
y = x + 0.1
class(x)
class(y)
typeof(x)
dim(x) # vector

d = cbind(x, y)
class(d)
df = data.frame(x, y)
class(df)

x
x[3] = 'na' # class coercion - now character
x

y + x
l = list(1, 2, 'na', 4, x)
l
class(y)
class(c(y, 'hello'))
b = c(TRUE, FALSE, TRUE, NA)
class(b)
class(c(b, y))
