#25th July 2017
#Fridah Nyakundi
#Anova in R
Highyield <- read.csv(choose.files())
summary(Highyield)
ls(Highyield)
Highyield[ , 3] <- "Variety"
Highyield[ , 5] <- "Total Yield"
Highyield$ENTRY_NO <- as.factor(Highyield$ENTRY_NO)
Highyield$DESIGNATION <- as.factor(Highyield$DESIGNATION)
Highyield$REP_NO <- as.factor(Highyield$REP_NO)
Highyield$BLOCK_NO <- as.factor(Highyield$BLOCK_NO)
Highyield$PLOT_NO <- as.factor(Highyield$PLOT_NO)
Summary(Highyield)
AnovaHighyield <- aov(Highyield$YDHA ~ Highyield$DESIGNATION)
summary.aov(AnovaHighyield)
AnovaHighyield <- aov(Highyield$Fe ~ Highyield$DESIGNATION)
summary.aov(AnovaHighyield)
TukeyHSD(AnovaHighyield)
AnovaHighyield <- aov(Highyield$Zn ~ Highyield$DESIGNATION)
FeZnassociation <- 
cor.test(Highyield$Fe, Highyield$Zn)#correlation between two agricultural practices
