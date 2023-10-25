householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
) 
flights = readRDS("data/flights.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flights$data[[1]]$data_frame)
factor(
  flightsData$AirlineID
  )
flights
