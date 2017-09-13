leap <- function(year) {
  isLeap = FALSE;
  if(year %% 400 == 0) {
    isLeap = TRUE;
  }
  else if(year %% 100 == 0) {
    isLeap = FALSE;
  }
  else if(year %% 4 == 0) {
    isLeap = TRUE;
  }
  
  print(isLeap);
}

