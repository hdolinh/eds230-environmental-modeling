
almond_profit <- function(almond_yield_anomaly, year, price, discount){
  
  if (length(almond_yield_anomaly) < 1)
    return(NA)
  
  # create ids
  scen = seq(from = 1, to = length(almond_yield_anomaly))
  
  # create empty df
  annual_profit = data.frame(scen = scen,
                             almond_yield_anomaly = almond_yield_anomaly,
                             year = year)
  # calculate net profit
  annual_profit$net = annual_profit$almond_yield_anomaly * price
  
  # create final df
  annual_profit = annual_profit %>% 
    mutate(net_pre = compute_npv(value = net,
                                 time = year - year[1],
                                 discount = discount))
  
  # return df
  return(annual_profit)
  
}