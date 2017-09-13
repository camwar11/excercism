# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if(nchar(strand1) != nchar(strand2)) {
    stop("Invalid length");
  }
  
  sum(charToRaw(strand1) != charToRaw(strand2));
}
