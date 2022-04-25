#' Compute atmospheric conductance
#'
#' @param zm the height that windspeed is measured at; must be higher than the vegetation (h) and is typically measured 200 cm above
#' @param h vegetation height in cm
#' @param v windspeed in cm/s
#' @param kd constant at 0.7
#' @param k0 constant at 0.1
#'
#' @return
#' @export
#'
#' @examples cat(h = 200, v = 5)
#' 
cat <- function(h, v, kd = 0.7, k0 = 0.1){
  
  zm <- 200 + h
  # creating zd and z0
  zd <- kd * h
  z0 <- k0 * h
  # calculating atmospheric conductance
  cat <- v / (6.25 * log((zm - zd) / z0)^2)
  
  
  # return cat
  return(cat)
}