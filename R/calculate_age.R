#' Calculate age, in years, using birthdate and a reference date, e.g. reaction start date
#'
#' @param birthdate A vector of birthdate
#' @param reference_date A vector of reference date
#' @return Age, in years, of an individual at a point in time (reference date).
#'
#' @importFrom lubridate as.period interval is.Date
#'
#' @export
#'
calculate_age <-
      function(birthdate, reference_date = Sys.Date()) {

            require(lubridate)

            if(is.Date(c(birthdate,reference_date)) == FALSE) {
                  writeLines("At least one of arguments is not a date field")
            } else {
                  period <- as.period(interval(birthdate, reference_date), unit = "year")
                  period$year
            }
      }
