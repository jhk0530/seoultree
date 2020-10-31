# 2004 data

# report.txt from https://data.seoul.go.kr/dataList/367/S/2/datasetView.do
library(dplyr)

tab <- read.table('data/report04.txt')

## City
# year, gu, road, tree
city <- data.frame(
  year = 2004,
  gu = tab[-c(1:2), 2],
  road = tab[-c(1:2), 3],
  tree = tab[-c(1:2), 4]
)

city$road <- sapply(city$road, function(i){
  v <- suppressWarnings(as.numeric(i))
  if(is.na(v)){return(0)}
  return(v)
}, USE.NAMES = FALSE)

city$tree <- sapply(city$tree, function(i){
  v <- gsub(',','',i)
  v <- suppressWarnings(as.numeric(v))
  if(is.na(v)){return(0)}
  return(v)
}, USE.NAMES = FALSE)

## TREE
# year, gu, species, tree
gu = tab[-c(1:2), 2]
species = as.character(tab[2,-c(1:4)])
trees <- data.frame(
  year = 2004,
  gu = rep(gu, each = length(species)),
  species = rep(species, times =  length(gu))
)

tree = c()
for(i in 3:nrow(tab)){
  tree <- c(tree,
    sapply(unname(tab[i,-c(1:4)]),  function(i){
      v <- gsub(',','',i)
      v <- suppressWarnings(as.numeric(v))
      if(is.na(v)){return(0)}
      return(v)
    }, USE.NAMES = FALSE)
  )
}

trees$tree <- tree


