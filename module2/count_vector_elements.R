count_elements <- function(x) {
  c <- sort(x)
  rbind(unique(c),rle(c)$lengths)
}