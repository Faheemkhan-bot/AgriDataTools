#' Replicated Field Trial Dataset of Bread Wheat Cultivars
#'
#' Evaluated multi-trait quantitative parameters recorded from an agricultural field trial.
#' The research experiment was systematically laid out in a standard Randomized Complete
#' Block Design (RCBD) featuring distinct replications for diverse bread wheat genotypes.
#'
#' @docType data
#' @keywords datasets
#' @name agri_data
#' @usage data(agri_data)
#'
#' @format A data frame with 180 rows and 11 scientific parameters:
#' \describe{
#'   \item{Genotypes}{Identified name of the bread wheat cultivars/lines analyzed.}
#'   \item{Replication}{The specific replication block within the RCBD layout.}
#'   \item{PH}{Plant Height measured in centimeters.}
#'   \item{SD}{Spike Density calculated as numeric index.}
#'   \item{NOL}{Number of Leaves per main stem.}
#'   \item{IND}{Internodal Distance documented in centimeters.}
#'   \item{DTH}{Days to Heading observed from planting date.}
#'   \item{DTA}{Days to Anthesis explored across cultivars.}
#'   \item{NOGP}{Number of Grains per Spike counted post-harvest.}
#'   \item{TGW}{Thousand Grain Weight evaluated in grams.}
#'   \item{GY}{Grain Yield calculated as total performance output.}
#' }
#' @source Simulated based on research variety trials conducted by the creator.
#' @examples
#' data(agri_data)
#' head(agri_data)
"agri_data"
