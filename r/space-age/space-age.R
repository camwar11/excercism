space_age <- function(seconds, planet) {
  earthYear <- 31557600
  planets <- list(1, 0.2408467, 0.61519726, 1.8808158, 11.862615, 29.447498, 84.016846, 164.79132)
  names(planets) <- list("earth", "mercury", "venus", "mars", "jupiter", "saturn", "uranus", "neptune")
  
  muliplier <- unlist(planets[[tolower(planet)]])
  
  age <- seconds / (muliplier * earthYear)
  
  return(round(age, 2));
}
