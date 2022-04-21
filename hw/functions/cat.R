cat <- function(zm, h, v, kd = 0.7, k0 = 0.1){
  
  # creating zd and z0
  zd <- kd * h
  z0 <- k0 * h
  # calculating atmospheric conductance
  cat <- v / (6.25 * log((zm - zd) / z0)^2)
  
  # return cat
  return(cat)
}