myfunction <- function(x) {
	y <- rnorm(100)
	mean(y)
}

second <- function(x) {
	x + rnorm(length(x))
}

f <- function(x) {
  g <- function(y){
    y+z
  }
  z <- 4
  x + g(x)
}

weightmedian <- function(directory, day) {
  files_list <- list.files(directory, full.names = TRUE) # Creates a list of files
  dat <- data.frame() # Create an empty dataframe
  for (i in 1:length(files_list)) {
    # Loop through files and rbind them
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  dat_subset <- dat[which(dat[, "Day"] == day), ] # create a subset for the day
  median(dat_subset[, "Weight"], na.rm = TRUE) # compute median while ignoring NA
}