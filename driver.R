if (!file.exists('data')) dir.create('data')
if (!file.exists('src')) dir.create('src')
if (!file.exists('results')) dir.create('results')
if (!file.exists('docs')) dir.create('docs')

source('src/EditDataframe.R')
source('src/Analysis.R')
