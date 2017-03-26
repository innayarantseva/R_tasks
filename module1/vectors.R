get_fractions <- function(m, n) {
  a <- (0:m) / m
  b <- (0:n) / n
  res <- sort(unique(c(a,b)), decreasing = TRUE)
  return(res)
}