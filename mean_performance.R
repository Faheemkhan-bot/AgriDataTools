#' Mean Performance of Genotypes
#'
#' Calculated the mean values of a specific agricultural trait for each line/cultivar,
#' sorted in descending order to identify top-performing genotypes.
#'
#' @param data A data frame containing the agricultural research data.
#' @param genotype_col The name of the column containing genotypes/lines (as a string).
#' @param trait_col The name of the numeric trait column to analyze (as a string).
#'
#' @return A data frame showing sorted mean values of the specified trait.
#' @export
#'
#' @examples
#' data(agri_data)
#' mean_performance(agri_data, genotype_col = "Genotypes", trait_col = "GY")
mean_performance <- function(data, genotype_col, trait_col) {
  df_means <- aggregate(data[[trait_col]] ~ data[[genotype_col]], FUN = mean)
  colnames(df_means) <- c(genotype_col, trait_col)
  df_means <- df_means[order(-df_means[[trait_col]]), ]
  return(df_means)
}
