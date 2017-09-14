square <- function(n) {
  if(n < 1 || n > 64) stop("bad input")
  2^(n-1)
}

total <- function() {
  sum(square(1:64));
}
