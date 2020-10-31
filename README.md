# :yellow_heart: seoultree <img src = https://user-images.githubusercontent.com/6457691/97768855-7a29ae00-1b69-11eb-8025-b637d990029c.png width = 120 align = 'right'>

R package for Tree data of Seoul City.

## :blue_book: Data Source 

서울 열린 데이터 광장 

<https://data.seoul.go.kr/dataList/367/S/2/datasetView.do>

## :wrench: Install & Usage

```r
devtools::install_github('jhk0530/seoultree')
# library(seoultree)
seoultree::city
seoultree::trees
```
## :zap: Data Description


### :classical_building: City 

- year : Year of Data source ( 2004 only available yet )
- gu : Name of Area (admin unit of seoul city)
- road : Number of total roads to plant Trees
- tree : Number of total counts of tree (above all species)

#### Example

|year|gu|road|tree|
|:--:|:--:|:--:|:--:|
|2004|강남구|56|21190|

This means, there were 21190 tree along 56 roads for 강남구 in 2004.

### :deciduous_tree: tree

- year : Same with above description
- gu : Same with above description
- species : Species of tree.
- tree : Count of that tree.

#### Example

|year|gu|species|tree|
|:--:|:--:|:--:|:--:|
|2004|성북구|은행나무|2770|

This means, there were 2770 은행나무 (ginkgo) for 성북구 in 2004.


## :blush: Authors
* :octocat: jhk0530 [@jhk0530](http://github.com/jhk0530)

## :memo: License

Icons made by <a href="http://www.freepik.com/" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>

HexSticker made by [polaroid](https://github.com/jhk0530/polaroid)

Copyright :copyright: 2019-2020 Jinhwan Kim
This project is [MIT](https://opensource.org/licenses/MIT) licensed

*This README was generated with :two_hearts: by [shinyReadme](http://github.com/jhk0530/shinyReadme)*

