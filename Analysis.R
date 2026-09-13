rm(list=ls(all=TRUE))

df.t <- read.csv('data/tempExperiment_v2.csv')

str(df.t)

df.t$temp <- factor(df.t$temp)

boxplot(df.t$growthRate ~ df.t$temp + df.t$pop)

boxplot(df.t$growthRate ~ df.t$temp + df.t$pop,
        names = c('10', '20', '10', '20'),
        at = c(1, 2, 4, 5),
        ylab = 'Growth rate mm/day',
        xlab = '')

mtext('Pop 1', side = 1, at = 1.5, line = 3)
mtext('Pop 2', side = 1, at = 4.5, line = 3)

pdf('results/MyBoxplot.pdf', width = 5, height = 5)

boxplot(df.t$growthRate ~ df.t$temp + df.t$pop,
        names = c('10', '20', '10', '20'),
        at = c(1, 2, 4, 5),
        ylab = 'Growth rate mm/day',
        xlab = '')

mtext('Pop 1', side = 1, at = 1.5, line = 3)
mtext('Pop 2', side = 1, at = 4.5, line = 3)

dev.off()

m1 <- aov(df.t$growthRate ~ df.t$temp * df.t$pop)

m1.summary <- summary(m1)

m1.summary

saveRDS(m1.summary, 'results/m1.summary.rds')
