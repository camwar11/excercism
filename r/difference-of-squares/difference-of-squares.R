# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(natural_number) {
  numbers <- 0:natural_number;
  sumOfSquares = 0;
  squareOfSums = 0;
  
  for(number in numbers)
  {
    squareOfSums = squareOfSums + number;
    sumOfSquares = sumOfSquares + number ^2;
  }
  squareOfSums = squareOfSums ^ 2;
  
  print(squareOfSums - sumOfSquares);
}
