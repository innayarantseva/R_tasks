is_monotone <- function(x) {
  return(all(x[-1]-x[-length(x)] >= 0) || all(x[-1]-x[-length(x)] <= 0))
}