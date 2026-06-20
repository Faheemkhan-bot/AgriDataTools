#' Principal Component Analysis (PCA) for Agricultural Traits
#'
#' Explored multivariate agricultural data using Principal Component Analysis (PCA)
#' to calculate eigenvalues, variance proportions, and component loadings.
#'
#' @param data A data frame containing the agricultural research data.
#' @param trait_cols A character vector containing the names of the numeric columns/traits to analyze.
#'
#' @return A list containing the summary of PCA (eigenvalues and variance) and the rotation matrix (loadings).
#' @export
#'
#' @examples
#' data(agri_data)
#' traits_to_analyze <- c("PH", "SD", "GY")
#' agri_pca(agri_data, trait_cols = traits_to_analyze)
agri_pca <- function(data, trait_cols) {
  numeric_data <- data[, trait_cols, drop = FALSE]
  numeric_data <- as.data.frame(lapply(numeric_data, as.numeric))
  pca_result <- prcomp(numeric_data, scale. = TRUE)
  output <- list(
    Importance = summary(pca_result)$importance,
    Loadings = pca_result$rotation
  )
  return(output)
}
