bob <- function(input) {
  input = trimws(input)
  if(silence(input)) {
    'Fine. Be that way!'
  } else if(yell(input)) {
    'Whoa, chill out!'
  } else if(question(input)) {
    'Sure.'
  } else {
    'Whatever.'
  }
}

question <- function(input) {
  lastChar = substring(input, nchar(input), nchar(input))
   lastChar == '?'
}

yell <- function(input) {
  toupper(input) == input && any(is.letter(input))
}

is.letter <- function(x) grepl("[[:alpha:]]", x)

silence <- function(input) {
  nchar(input) == 0
}