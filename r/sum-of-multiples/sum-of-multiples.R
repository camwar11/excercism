sum_of_multiples <- function(factors, limit) {
  range <- 1:(limit-1)
  
  isFactor <- function(number) {
    any(number %% factors == 0)
  }
  
  sum(Filter(isFactor, range))
}


