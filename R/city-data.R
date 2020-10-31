#' Seoul Tree data
#'
#' Data from 'data.seoul.go.kr'
#'
#' @docType data
#'
#' @usage data(city)
#' @usage data(trees)
#'
#' @keywords datasets
#'
#' @references https://data.seoul.go.kr/dataList/367/S/2/datasetView.do
#'
#' @examples
#' ## Requires font for korean text
#' data(city)
#' ggplot(data = city, aes(x = gu, y = tree, fill = gu)) +
#' geom_bar(stat = 'identity')
