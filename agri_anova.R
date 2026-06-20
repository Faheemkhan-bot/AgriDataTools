#' Randomized Complete Block Design (RCBD) ANOVA
#'
#' Evaluated field trial data using a standard strict two-way Analysis of Variance (ANOVA)
#' optimized for Randomized Complete Block Designs (RCBD).
#'
#' @param data A data frame containing the agricultural research data.
#' @param genotype_col The name of the column containing genotypes/lines.
#' @param replication_col The name of the column containing replications/blocks.
#' @param trait_col The name of the numeric trait column to analyze.
#'
#' @return An anova object showing degrees of freedom, sum of squares, and p-values.
#' @export
#'
#' @examples
#' data(agri_data)
#' agri_anova(agri_data, genotype_col = "Genotypes", replication_col = "Replication", trait_col = "GY")
agri_anova <- function(data, genotype_col, replication_col, trait_col) {
  formula_str <- paste0(trait_col, " ~ ", replication_col, " + ", genotype_col)
  model <- lm(as.formula(formula_str), data = data)
  anova_table <- anova(model)
  return(anova_table)
}
