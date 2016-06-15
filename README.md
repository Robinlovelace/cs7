
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

Course content
--------------

### Day 1: Intermediate R

-   (Re)introduction to RStudio (9:30 - 11:15)
    -   1 hr lecturing, 45 minutes practical
    -   Practical handout: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R), Part I
-   Objects, functions and concepts for efficient R programming (11.30 - 13.45)
    -   30 minutes intro, 45 minutes hands on, 20 minutes lecture, 40 minutes practical
    -   Practical handout: [Objects, functions and concepts for efficient R programming](https://www.dropbox.com/s/w9ol2by7b7civr6/Objects_Functions.pdf?dl=0), by Lex Comber
    -   Exercise: Read sections [4.1](https://csgillespie.github.io/efficientR/efficient-set-up.html#top-5-tips-for-an-efficient-r-set-up) to [4.2](https://csgillespie.github.io/efficientR/efficient-set-up.html#operating-system) of Colin Gillespie, Robin Lovelace (2016) and complete the Exercise at the end of 4.2.

**13.45 - 14.30 Lunch**

-   Data manipulation (14:30 - 16:00)
    -   Practical: work through [Chapter 5](https://csgillespie.github.io/efficientR/efficient-data-carpentry.html) of *Efficient R Programming*
-   Plotting paradigms (16:15 - 17:45)
    -   Lecture and practical handout: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R) (Part IV)
    -   **Base graphics**
    -   **ggplot2**
    -   **tmap**
    -   **leaflet**
    -   **mapview**

Day 2: Basics of R as a GIS
---------------------------

-   Spatial data in R, sp classes and projections (09.00 -11.15)
    -   Practical handout 1: [Spatial data in R](https://www.dropbox.com/s/9eozr5slpj638es/Manipluating_Spatial_Objects.pdf?dl=0) by Lex Comber
    -   Practical handout 2: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R), Part II)
-   Loading, plotting and interrogating spatial data, including shapefiles, xy and spatial queries (11:30 - 13:45)
    -   (practical handout: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R), Part III)

**13.45 - 14.30 Lunch**

-   Loading, plotting and interrogating spatial data, including shapefiles, xy and spatial queries (14:30 - 16:00)
    -   (practical handout: [creating-maps-in-R](https://github.com/Robinlovelace/Creating-maps-in-R), Part III)
-   Manipulating spatial objects with a focus on rgeos (16:15 - 17:45)
    -   Course handout: [Manipulating Spatial Objects](https://www.dropbox.com/s/9eozr5slpj638es/Manipluating_Spatial_Objects.pdf?dl=0) by Lex Comber

Day 3: Advanced R for spatial data analysis
-------------------------------------------

-   Introduction to raster data with R (09:00 - 11:15)
    -   Course handout: [Introduction to Raster Analysis](https://www.dropbox.com/s/obn45ov7kpos5to/Raster_Analysis.pdf?dl=0) by Lex Comber
    -   See [historic raster data for Poznan](https://github.com/Robinlovelace/Creating-maps-in-R/blob/master/data/poz_modified.tif), which you can load with:

``` r
library(raster)
poz = raster("data/poz_modified.tif")
```

<!-- - Spatio-temporal data with **spacetime** (11:30 - 13:45) -->
-   Transport data with **stplanr** (11:30 - 13:45)
    -   Exercise: Work through the package's vignette (`vignette("introducing-stplanr")`), which can also be found [online](https://cran.r-project.org/web/packages/stplanr/vignettes/introducing-stplanr.html).
    -   Exercise (optional): Reproduce the analysis represented here on cycling potential over the Menai bridge with reference to the [github.com/Robinlovelace/pct-menai](https://github.com/Robinlovelace/pct-menai/blob/master/vignettes/menai-bridge-cycle.Rmd) repo and by installing the 'pctWales' package from GitHub:

``` r
devtools::install_github("robinlovelace/pct-menai")
```

**Bonus test**: can you reproduce [these results](http://rpubs.com/RobinLovelace/189307)?

**13.45 - 14.30 Lunch**

-   Points pattern analysis - points to surfaces by IDW, Kriging (14:30 - 16:00)
    -   Handout: [Point Patter analysis](https://www.dropbox.com/s/gn1i21rsvipbwom/Point_Pattern.pdf?dl=0) by Lex Comber
-   Advanced graphics: online mapping with **mapview** and leaflet and static maps with **tmap** (16:15 - 17:45)

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

References
----------

Bivand, Roger S, Edzer J Pebesma, and Virgilio G’omez-Rubio. 2013. *Applied Spatial Data Analysis with R*. Vol. 747248717. Springer.

Brunsdon, Chris, and Lex Comber. 2015. *An Introduction to R for Spatial Analysis & Mapping*. Sage.

Colin Gillespie, Robin Lovelace. 2016. *Efficient R Programming*. <http://shop.oreilly.com/product/0636920047995.do>.

Dorman, Michael. 2014. *Learning R for Geospatial Analysis*. Packt Publishing Ltd.

Lamigueiro, Oscar Perpinan. 2014. *Displaying Time Series, Spatial, and Space-Time Data with R*. CRC Press.

Lovelace, Robin, and James Cheshire. 2014. “Introduction to Visualising Spatial Data in R.” *Comprehensive R Archive Network*, no. 03. <https://github.com/Robinlovelace/Creating-maps-in-R>.

Torfs, Paul, and Claudia Brauer. 2014. “A (Very) Short Introduction to R.” *Comprehensive R Archive Network*. <http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf>.
