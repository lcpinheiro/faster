#' Mutate all character columns that have the string "date" in them
#'
#' @param data A data set in tibble format
#' @return A new tibble where columns of \code{data} that have the string date are transformed to date fields.
#'
#' @importFrom dplyr %>% mutate_at
#' @importFrom lubridate dmy_hms
#'
#' @export
#'
mutate_all_date_cols <-
      function(data) {

            if(any(grepl("date", colnames(data)))) {
                  data %>%
                        mutate_at(vars(contains("date")),
                                  function(x) {as.Date(round_date(dmy_hms(x), unit = "days"))})
            } else {
                  writeLines("Warning: Does not contain a column with the string date")
            }
      }
