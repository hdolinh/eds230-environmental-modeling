#' Almond yield from Lobell et al. 2006
#' This is specifically for calculating almond yields 
#'
#' @param temp This is the parameter for Temperature 
#' @param precip This is the parameter for Precipitation
#' @param temp_min_coeff_1 This is the coefficient for the minimum temperature based on exploratory analysis of state yield records found in the Lobell paper 
#' @param temp_min_coeff_2 This is the coefficient for the minimum temperature based on exploratory analysis of state yield records found in the Lobell paper
#' @param percip_coeff_1 This is the coefficient for precipitation based on exploratory analysis of state yield records found in the Lobell paper
#' @param percip_coeff_2 This is the coefficient for precipitation based on exploratory analysis of state yield records found in the Lobell paper
#' @param intercept Found in the Lobell paper
#'
#' @return
#' @export
#'
#' @examples almond_yield(temp = 18 , precip = 24)

#' 
#' 
almond_yield <- function(temp, precip,
                         temp_min_coeff_1 = -0.015, 
                         temp_min_coeff_2 = -0.0046, 
                         percip_coeff_1 = -0.07, 
                         percip_coeff_2 = 0.0043, 
                         intercept = 0.28){
  
  # calculating almond yield
  yield = (temp_min_coeff_1 * temp) + (temp_min_coeff_2 * temp^2) +
    (percip_coeff_1 * precip) + (percip_coeff_2 * precip^2) + intercept
  
  # results
  return(yield)
  
} 




