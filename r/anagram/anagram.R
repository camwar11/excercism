anagram <- function(subject, candidates) {
  find.anagrams(subject, candidates)
}

find.anagrams <- function(word1, candidates) {
  anagrams <- list()
  idx <- 1
  for(candidate in candidates) {
    if(nchar(word1) != nchar(candidate) ||
       tolower(word1) == tolower(candidate)) {
      next
    }
    
    chars <- strsplit(tolower(word1), '')[[1]]
    
    isAnagram <- TRUE
    
    tester = tolower(candidate)
    for(char in chars) {
      new.tester <- sub(char, '', tester)
      if(new.tester == tester) {
        isAnagram <- FALSE
        break
      }
      
      tester = new.tester
    }
    
    if(isAnagram && length(chars) > 0)
      anagrams[idx] <- candidate
    
    idx <- idx + 1
  }
  
  return(unlist(anagrams))
}