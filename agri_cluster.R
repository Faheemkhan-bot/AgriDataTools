#' Hierarchical Cluster Analysis for Genotypes
#'
#' Documented genetic diversity among cultivars/lines by performing hierarchical
#' cluster analysis on multi-trait agricultural research data.
#'
#' @param data A data frame containing the agricultural research data.
#' @param genotype_col The name of the column containing genotypes/lines (as a string).
#' @param trait_cols A character vector containing the names of the numeric columns/traits to use for clustering.
#'
#' @return An object of class "hclust" which can be used to plot a dendrogram.
#' @export
#'
#' @examples
#' data(agri_data)
#' traits_to_analyze <- c("PH", "SD", "GY")
#' cluster_res <- agri_cluster(agri_data, genotype_col = "Genotypes", trait_cols = traits_to_analyze)
#' plot(cluster_res, main = "Cluster Dendrogram of Genotypes")
agri_cluster <- function(data, genotype_col, trait_cols) {
  agri_means <- aggregate(data[, trait_cols, drop = FALSE], by = list(data[[genotype_col]]), FUN = mean)
  rownames(agri_means) <- agri_means[[1]]
  agri_means[[1]] <- NULL
  scaled_data <- scale(agri_means)
  dist_matrix <- dist(scaled_data, method = "euclidean")
  cluster_model <- hclust(dist_matrix, method = "ward.D2")
  return(cluster_model)
}
