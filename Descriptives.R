#Descriptives
install.packages('Hmisc')
library()
#Descriptives
mean(mugugdata$Sample.dry.leaves...stems..g.)
sd(mugugdata$Sample.dry.leaves...stems..g.)
summarize(mugugdata)
library(dplyr)
??descriptive
#plots
library(ggplot2)
ggplot(mugugdata, aes(x = mugugdata$Fresh.biomass..kg.,y = mugugdata$Sample.dry.leaves...stems..g.))
hist(mugugdata$Cultivar, main = "Histogram of cultivars", xlab = "type of cultivar", col = "blue")

data_frame(summarise(group_by(mugugdata$Sample.Fresh.leaves...stems..g.,
              mugugdata$Sample.dry.leaves...stems..g.), avg_val = mean(ugugdata$Sample.Fresh.leaves...stems..g.,)))

data.frame(summarize(group_by(data2, Subject, Class),
                     avg_val = mean(value))) -> table_for_you
