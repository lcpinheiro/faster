#' Read all csv files in a folder and create a list of tibbles
#'
#' @param folder A folder with csv files
#' @param na_type A list of vectors that reflect null or NA values
#' @return A list of tibbles including all csv files from a folder.
#'
#' @importFrom stringr str_replace
#' @importFrom readr read_csv
#' @importFrom purrr map
#'
#' @export
#'
read_all_csv <-
      function(folder, na_type = c("", "NA", -1)) {

            file_names <- list.files(folder) %>%
                  str_replace(., ".csv", "") %>%
                  as.list()

            files <- list.files(folder, pattern = ".csv", full.names = TRUE) %>%
                  purrr::map(~read_csv(., na = na_type)) %>%
                  setNames(., file_names)
      }
