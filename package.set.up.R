install.packages("devtools")
install.packages("roxygen2")
library(devtools)
library(roxygen2)

create("longlat", rstudio=TRUE,roxygen=TRUE,open=FALSE)

setwd("longlat")

document()

use_data(gw)

use_vignette("longlat_vignette")
