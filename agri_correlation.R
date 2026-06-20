#' Correlation Analysis for Agricultural Traits
#'
#' Calculated the Pearson correlation matrix for multiple quantitative parameters
#' or traits in agricultural research data.
#'
#' @param data A data frame containing the agricultural research data.
#' @param trait_cols A character vector containing the names of the numeric columns/traits to correlate.
#'
#' @return A correlation matrix showing the coefficients between the selected traits.
#' @export
#'
#' @examples
#' data(agri_data)
#' traits_to_analyze <- c("PH", "SD", "GY")
#' agri_correlation(agri_data, trait_cols = traits_to_analyze)
agri_correlation <- function(data, trait_cols) {
  numeric_data <- data[, trait_cols, drop = FALSE]
  numeric_data <- as.data.frame(lapply(numeric_data, as.numeric))
  cor_matrix <- cor(numeric_data, use = "complete.obs", method = "pearson")
  return(round(cor_matrix, 2))
}
