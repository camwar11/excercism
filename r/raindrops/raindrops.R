raindrops <- function(number) {
  speak = ''
  if(isFactor(number, 3)) {
    speak = 'Pling';
  }
  
  if(isFactor(number, 5)) {
    speak = paste(speak, 'Plang', sep='');
  }
  
  if(isFactor(number, 7)) {
    speak = paste(speak, 'Plong', sep='');
  }
  
  if(speak == '') {
    speak = paste(speak, number, sep='');
  }
  
  speak;
}

isFactor <- function(number, divisor) {
  number %% divisor == 0;
}
