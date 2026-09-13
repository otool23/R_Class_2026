df.t1 <- read.csv('tempExperiment-raw.csv')

head(df.t1)
str(df.t1)

a <- strsplit(as.character(df.t1$temp), split = '-')
newvar <- matrix(unlist(a), ncol = 2, byrow = TRUE)

head(newvar)

df.t2 <- df.t1

df.t2$temp <- newvar[,1]
df.t2$pop <- newvar[,2]

head(df.t2)

df.t2$temp <- sub('ten', '10', df.t2$temp)
df.t2$temp <- sub('twenty', '20', df.t2$temp)

df.t2$pop <- sub('population ', 'pop', df.t2$pop)

str(df.t2)

df.t2$temp <- factor(df.t2$temp)
df.t2$pop <- factor(df.t2$pop)

str(df.t2)

write.csv(df.t2, 'data/tempExperiment_v2.csv')
