#' Longitude, Latitude, Date Conversion
#' @description 'coordinate_function' returns latitude and longitude inputs into decimal degrees.
#' This function converts decimal minutes into decimal degrees for latitude and longitude data. The function also converts dates into R format.
#' @param long longitude coordinate
#' @param lat latitude coordinate
#' @param date (optional) date in DD-MMM-YY format


coordinate_function <- function(long,lat,date){
  if (missing(date)){

  y <- gsub("'W","",long)
  z <- strsplit(y, "°")
  a <- t(as.data.frame(z))
  b <- as.numeric(a[,1])
  c <- as.numeric(a[,2])
  new_long <- -b + c/60

  k <- gsub("'N","",lat)
  l <- strsplit(k, "°")
  m <- t(as.data.frame(l))
  n <- as.numeric(m[,1])
  o <- as.numeric(m[,2])
  new_lat <- n + o/60
  new_coords <- data.frame(new_long,new_lat)

  } else {

    y <- gsub("'W","",long)
    z <- strsplit(y, "°")
    a <- t(as.data.frame(z))
    b <- as.numeric(a[,1])
    c <- as.numeric(a[,2])
    new_long <- -b + c/60

    k <- gsub("'N","",lat)
    l <- strsplit(k, "°")
    m <- t(as.data.frame(l))
    n <- as.numeric(m[,1])
    o <- as.numeric(m[,2])
    new_lat <- n + o/60

    new_date <- as.Date(date, format="%d-%b-%y")
    new_coords <- data.frame(new_long,new_lat,new_date)
  }
}



