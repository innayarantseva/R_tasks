#в лоб

combin_count <- function(n, k, with_repetitions = FALSE) {
  if (isTRUE(with_repetitions)) {
      return( factorial(n+k-1) / (factorial(k)*factorial(n-1)) )
    } else  {
      return( factorial(n) / (factorial(k)*factorial(n-k)) ) 
    }
}