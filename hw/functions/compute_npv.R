# pulled from naomi tague
#' compute_NPV
#' compute net present vaulue
#' 
#' @param value / cost of almonds ($)
#' @param time future time period that cost / value occurs (yrs)
#' @param discount rate ??
#'
#' @return cost / value ($)
#'
#' @examples compute_npv(value = 5, time = 2, discount = 0.12)


compute_npv = function(value, time, discount = 0.12) {
  
  result = value / (1 + discount)**time
  
  return(result)
}