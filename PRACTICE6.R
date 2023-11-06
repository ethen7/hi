class(ord_fct_householdincome)
grades[, "student"] # retrieve student column
grades[, c("student", "midterm")] # retrieve student and midterm columns
grades[c(1,3), "student"] # retrieve student column for rows 1 and 3
grades[c(1,3), c("student", "midterm")] # retrieve student and midterm columns for rows 1 and 3
dplyr::glimpse(split_flightsData[[1]])flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData
.x = 1
dplyr::mutate(
  split_flightsData[[.x]],
  DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
  ### Range
  
  flightsData2$DepartureTime |> range() |> lubridate::with_tz("Asia/Taipei")
  
  ### ScheduleStartDate 
  flightsData2 |> split(flightsData2$ArriveTaiwan) -> split_flightsData2
  
  #### Departure from Taiwan
  flightsData2 |>
    dplyr::filter(
      DepartTaiwan 
    ) -> DepartFlights
  
  DepartFlights$ScheduleStartDate |> table() |> sort(d=T) |> head()
  flights = readRDS("data/flights.rds")
  