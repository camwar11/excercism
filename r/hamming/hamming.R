# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if(nchar(strand1) != nchar(strand2)) {
    stop("Invalid length");
  }
  
  var.distance = 0;
  for(equal in charToRaw(strand1) == charToRaw(strand2)) {
    if(!equal)
      var.distance = var.distance + 1;
  }
  
  var.distance;
}
