#Function gets two arguments (m, n), returns a vector consist of {i/m, i = 0, 1, ..., m} and {j/n, j = 0, 1, ..., n}.
#No repeats, in decreasing order.

get_fractions <- function(m, n) {
  a <- (0:m) / m
  b <- (0:n) / n
  res <- sort(unique(c(a,b)), decreasing = TRUE)
  return(res)
}
