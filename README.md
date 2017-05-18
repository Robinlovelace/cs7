
<!-- README.md is generated from README.Rmd. Please edit that file -->
Welcome to cs7
--------------

This is the online, up-to-date home for the course *Intermediate and Advanced R for Spatial Data Analysis*.

It is also a *metapackage* in the sense that when you install it, many of the packages the tutorials depend on will be installed on your computer. Because this metapackage is not on CRAN, we use the **devtools** package to install it:

``` r
if(!require(devtools))
  install.packages("devtools")
devtools::install_github("robinlovelace/cs7")
```

Learning outcomes
-----------------

By the end of the course participants will:

-   Be more efficient general R programmers
-   Understand standard (non-spatial) data structures and how to subset, process and analyse them
-   Understand the structure of spatial data in R
-   Be able to query, subset and analyse spatial objects
-   Have a working knowledge of fundamental GIS functions such as changing projections
-   Be proficient in the use of R to create maps using add-on packages such as tmap
-   Have some experience with advanced functionality such as raster data and interactive maps

Resources
---------

The course website/wiki is [github.com/robinlovelace/cs7](https://github.com/robinlovelace/cs7)

-   Course overview: in <https://github.com/robinlovelace/cs7>
-   Slides: Available from [slides](https://github.com/robinlovelace/cs7/tree/master/slides) folder
-   Printed material:
    -   Introduction to Visualising Spatial Data with R
    -   Visualising spatial data: from Base to Shiny
    -   Point Pattern Analysis tutorial
-   Online material: see <https://github.com/robinlovelace/cs7> in the courses folder
-   **stplanr**: A package for Transport Planning (stplanr-paper for short, available from [github.com/ropensci/stplanr](https://github.com/ropensci/stplanr/blob/master/vignettes/stplanr-paper.Rmd)), a detailed account of how to use spatial data in R as part of a transport planning workflow.
-   Efficient R Programming (ERP): <https://csgillespie.github.io/efficientR/>
-   R for Data Science (R4DS): <http://r4ds.had.co.nz/>

Course content
--------------

The course is structured in 45 minute classes which mix practical and lecture content, with an emphasis on one or the other in each class. The timings each day are as follows:

10:00 - 11:30 classes (2)

11:30 - 11:45 coffee break

11:45 - 13:15 classes (2)

13:15 - 14:00 lunch break

14:00 - 15:30 classes (2)

15:30 - 15:45 coffee break

15:45 - 18:45 classes (4)

### Day 1: From introductory to intermediate R

-   Introduction: (10:00 - 11:30)
    -   30 minute lecture: why R for 'Geographic Data Science'?
    -   15 minute demonstration of effective use of R and RStudio
    -   45 minute practical: exploring your R/RStudio set-up
        -   Boosting productivity with RStudio ([ERP 2.5](https://csgillespie.github.io/efficientR/set-up.html#rstudio))
        -   How R's ecosystem works: packages, tutorials, help forums and code sharing sites ([ERP 4.4](https://csgillespie.github.io/efficientR/workflow.html#package-selection) and [ERP 10](https://csgillespie.github.io/efficientR/learning.html))

11:30 - 11:45 coffee break

-   Objects, functions and concepts for efficient R programming (11:45 - 13:15)
    -   R packages (15 minute talk, 30 minute group activity)
    -   15 minutes intro, 30 minutes hands on with the [Vectors chapter](http://r4ds.had.co.nz/vectors.html) of [R for Data Science](http://r4ds.had.co.nz) (Wickham and Grolemund 2016)

13:15 - 14:00 lunch break

-   Vectors and lists ([Chapter 20 of R4DS](http://r4ds.had.co.nz/vectors.html)) (14:00 - 14:45):
    -   see <http://r4ds.had.co.nz/vectors.html>
    -   Types of vector data
    -   Dimensionality: lists, matrices, data frames and arrays
-   Data input/output (14:45 - 15:30)
    -   Aim: get some 'raw' data ready for next class, e.g. on:
    -   Weather conditions in countries worldwide
    -   Economic performance of countries in Europe
    -   Species distributions
    -   Soil types
    -   CO2 emissions
-   Data sources (15 minute lecture)
-   Practical (30 minutes): obtain data, from web, APIs packages
    -   Quick go round: what is your dataset?
    -   Optional extra (advanced): reproduce benchmarks in ([ERP 5](https://csgillespie.github.io/efficientR/input-output.html)

15:30 - 16:00 coffee break

-   Tidying data (16:00 - 17:15)
    -   Introduction to data cleaning (15 minute lecture)
    -   Practical (45 minutes): work through <http://r4ds.had.co.nz/tidy-data.html>
    -   Regular expressions (15 minute practical)
        -   Work through the guidance in the regular expressions vignette provided by: `vignette("regular-expressions")`

17:15 - 17:20 minute break

-   Data carpentry with **dplyr** (17:20 - 18:45) [ERP 6.4](https://csgillespie.github.io/efficientR/data-carpentry.html)): <https://csgillespie.github.io/efficientR/data-carpentry.html#dplyr>
    -   Subsetting rows and columns ([6.4.3](https://csgillespie.github.io/efficientR/data-carpentry.html#filtering-rows))
    -   Creating new variables ([see 6.4.4](https://csgillespie.github.io/efficientR/data-carpentry.html#chaining-operations))
    -   Grouping and aggregating ([6.5.5](https://csgillespie.github.io/efficientR/data-carpentry.html#data-aggregation))
    -   Joining tables together ([6.5](https://csgillespie.github.io/efficientR/data-carpentry.html#combining-datasets))

Day 2: Basics of R as a GIS
---------------------------

-   An introduction to spatial data with sp (10:00 - 11:30)
-   An introduction to spatial classes (lecture 30 minutes)
-   Practical handout: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R), Part I and II
-   Spatial data classes [IVSDR II](https://github.com/Robinlovelace/Creating-maps-in-R/blob/master/intro-spatial.Rmd#part-ii-spatial-data-in-r) (30 minutes)
-   Subsetting data and basic plotting (30 minutes)

11:30 - 11:45 coffee break

-   Creating and manipulating spatial data [IVSDR III](https://github.com/Robinlovelace/Creating-maps-in-R/blob/master/intro-spatial.Rmd#part-iii-creating-and-manipulating-spatial-data) (11:45 - 13:15)
-   Creating spatial data (30 minutes)
-   Projections (30 minutes)
    -   Transforming data using `spTransform()`
-   Attribute joins (30 minutes)
-   Bonus topic: spatial subsetting and spatial joins

13:15 - 14:00 lunch break

-   Demonstration and discussion of the Propensity to Cycle Tool (PCT) (15 minute lecture)
-   Basic visualisation based on [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R) (Part IV) (14:15 - 15:30)
-   Introduction to plotting paradigms in R (lecture)
    -   **Base graphics**
    -   **ggplot2**
    -   **tmap**
-   Applying the methods to your own data

15:30 - 15:45 coffee break

-   Advanced visualisation (15:45 - 18:45) - options:
-   Completing Creating-maps-in-R tutorial: Visualising Spatial Data Tutorial (45 minutes)
-   Practical: Visualising Spatial Data Tutorial (45 minutes)
-   Visualising your own data to inform policy

Coffee break

-   Lecture and practical: interactive maps with R (45 minutes)
-   Advanced practical (challenge): Create an interactive map in shiny (30 minutes)

Day 3: Advanced Geographic Data with R
--------------------------------------

-   Introduction to raster data with R (10:00 - 11:30)
    -   Course handout: [Introduction to Raster Analysis](https://www.dropbox.com/s/obn45ov7kpos5to/Raster_Analysis.pdf?dl=0) by Lex Comber
    -   See [historic raster data for Poznan](https://github.com/Robinlovelace/Creating-maps-in-R/blob/master/data/poz_modified.tif), which you can load with:

``` r
library(raster)
poz = raster("data/poz_modified.tif")
```

<!-- - Spatio-temporal data with **spacetime** (11:30 - 13:45) -->
-   Transport data with **stplanr** (11:45 - 13:15)
    -   Exercise: Work through the package's vignette (`vignette("introducing-stplanr")`), which can also be found [online](https://cran.r-project.org/web/packages/stplanr/vignettes/introducing-stplanr.html).
    -   Exercise (optional): Reproduce the analysis represented here on cycling potential over the Menai bridge with reference to the [github.com/Robinlovelace/pct-menai](https://github.com/Robinlovelace/pct-menai/blob/master/vignettes/menai-bridge-cycle.Rmd) repo and by installing the 'pctWales' package from GitHub:

``` r
devtools::install_github("robinlovelace/pct-menai")
```

**Bonus test**: can you reproduce [these results](http://rpubs.com/RobinLovelace/189307)?

13:15 - 14:00 lunch break

-   Points pattern analysis - (14:00 - 15:30)
    -   Handout: [Point Pattern analysis](https://www.dropbox.com/s/gn1i21rsvipbwom/Point_Pattern.pdf?dl=0) by Lex Comber
-   Simple features with R (15:45 - 18:45)

Prerequisites and course home
-----------------------------

Working knowledge of R and RStudio is assumed.

Background reading (available online):

-   Torfs and Brauer (2014)
-   Colin Gillespie, Robin Lovelace (2016)
-   Lovelace and Cheshire (2014)

Background reading (not available online):

-   Bivand, Pebesma, and G’omez-Rubio (2013)
-   Dorman (2014)
-   Lamigueiro (2014)
-   Brunsdon and Comber (2015)

Further online materials
------------------------

-   A free book on Geostatistics by Jakub Nowosad: <https://github.com/Nowosad/geostatbook>

-   A document exploring cycling potential over the Menai Strait, UK: <https://github.com/Robinlovelace/pct-menai/blob/master/vignettes/menai-bridge-cycle.Rmd>

-   A [tutorial on OSM data](https://github.com/Robinlovelace/osm-tutorial/blob/master/osm.pdf) with R (this is a little out of date). A more up-to-date resource is the [osmplotr](https://github.com/ropenscilabs/osmplotr) package - see there and other activity online to find out more.

Contact: r.lovelace at leeds. ac. uk - for any questions or feedback on this course

References
----------

Bivand, Roger S, Edzer J Pebesma, and Virgilio G’omez-Rubio. 2013. *Applied Spatial Data Analysis with R*. Vol. 747248717. Springer.

Brunsdon, Chris, and Lex Comber. 2015. *An Introduction to R for Spatial Analysis & Mapping*. Sage.

Colin Gillespie, Robin Lovelace. 2016. *Efficient R Programming*. <http://shop.oreilly.com/product/0636920047995.do>.

Dorman, Michael. 2014. *Learning R for Geospatial Analysis*. Packt Publishing Ltd.

Lamigueiro, Oscar Perpinan. 2014. *Displaying Time Series, Spatial, and Space-Time Data with R*. CRC Press.

Lovelace, Robin, and James Cheshire. 2014. “Introduction to Visualising Spatial Data in R.” *Comprehensive R Archive Network*, no. 03. <https://github.com/Robinlovelace/Creating-maps-in-R>.

Torfs, Paul, and Claudia Brauer. 2014. “A (Very) Short Introduction to R.” *Comprehensive R Archive Network*. <http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf>.
