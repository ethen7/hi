# To ensure Chinese characters are displayed correctly
options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "zh_TW.UTF-8")
'zh_TW.UTF-8'

flights <- readRDS("data/flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)



# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData
head(split_flightsData[[1]], 3)
head(split_flightsData[[2]]$DepartureTimeZone, 3)
head(split_flightsData[[3]]$DepartureTimeZone, 3)