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

# y + x # error
l = list(1, 2, 'na', 4, x)
l
class(y)
class(c(y, 'hello'))
b = c(TRUE, FALSE, TRUE, NA)
class(b)
class(c(b, y))

# solution to challenge
l = list(TRUE, 0.5, "hello")
unlist(l)
# lapply iterates over every list item
# returns a list
lapply(X = l, FUN = class)
# parallel version:
parallel::mclapply(X = l, FUN = class)
# return vector
sapply(X = l, FUN = class)

# be aware of for loops:
for(i in 1:length(l)) {
  print(class(l[[i]]))
}

# loading/saving data:
# data input/output

data(mpg, package = "ggplot2")
plot(mpg$displ, mpg$cyl)
write.csv(mpg, "mpg.csv")
saveRDS(mpg, "mpg.Rds")
mpg2 = readRDS("mpg.Rds")
identical(mpg, mpg2)

file.size("mpg.csv")
file.size("mpg.Rds")

file.size("mpg.csv") / file.size("mpg.Rds")
system.time(
  write.csv(mpg, "mpg.csv")
)
system.time(
  saveRDS(mpg, "mpg.Rds")
)

# Geographical data from the Creating maps in R
# tutorial:
# lnd = sf::st_read("data/london_sport.shp")
# sf::st_write(lnd, "lnd2.geojson")
# saveRDS(lnd, "lnd.Rds")
# file.size("lnd.geojson") / file.size("lnd.Rds")

# getting data
library(SmarterPoland)
tmp <- getEurostatRCV(kod = "educ_iste")
head(tmp)
# geo data
library(tmap)
data(Europe)
names(Europe)
head(Europe@data[1:4])

# data tidying
library(stringr)
library(dplyr)
?str_sub
Europe$geo = str_sub(string = Europe$iso_a3, start = 0, end = 2)
nrow(Europe)
nrow(tmp) # big difference!
unique(tmp$geo) # but small number of countries...
summary(tmp$time) # back to 1998
summary(tmp$value)
tmp$time = as.numeric(as.character(tmp$time))
tmp = filter(tmp, time > 2009 )
tmp_av = group_by(tmp, geo) %>%
  summarise(av_ed = mean(value, na.rm = T))

Europe@data = left_join(Europe@data, tmp_av)
qtm(Europe, "av_ed") # more cleaning needed!
