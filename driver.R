getwd()
setwd("/Users/mcdonaldlab1/Desktop/R/R_week3/")

if (!file.exists('data')) dir.create('data')
if (!file.exists('src')) dir.create('src')
if (!file.exists('results')) dir.create('results')
if (!file.exists('docs')) dirs.create('docs')

source('src/EditDataframe.R')
source('src/Analysis.R')
