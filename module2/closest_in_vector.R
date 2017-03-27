find_closest <- function(v, n) {
  a <- abs(v -n)
  return(which(a == min(a)))
}