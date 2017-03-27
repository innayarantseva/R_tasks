#using 'for' cycle

build_ziggurat <- function(n) {
  z <- matrix(1, 
              nrow = n*2-1, 
              ncol = n*2-1)
  for (i in 1:n) {
    z[i:(n*2-i), i:(n*2-i)] <-i
  }
  z
}