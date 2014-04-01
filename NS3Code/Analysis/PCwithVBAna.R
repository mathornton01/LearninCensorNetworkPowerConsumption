

clmns <- c("BatType","Weight","Energy","DrainTime","PktsSent","PktsSize")
df <- read.table("../../Data/PCwithVB.csv", header = FALSE, quote = "\"", sep = ",", col.names=clmns)
LeadAciddf <- df[df$BatType == 0,]
graph_cols <- c('blue','red')
LDAdf1 <- LeadAciddf[LeadAciddf$Weight < 0.0000002, ]
LDAdf2 <- LeadAciddf[LeadAciddf$Weight < 0.0000003 & LeadAciddf$Weight > 0.0000002, ]
LDAdf3 <- LeadAciddf[LeadAciddf$Weight == 0.0000003, ]
LDAdf4 <- LeadAciddf[LeadAciddf$Weight < 0.00000049 & LeadAciddf$Weight >0.0000003 , ]
LDAdf5 <- LeadAciddf[LeadAciddf$Weight == 0.0000005, ]
LDAdf6 <- LeadAciddf[LeadAciddf$Weight == 0.0000006, ]
LDAdf7 <- LeadAciddf[LeadAciddf$Weight < 0.0000008 & LeadAciddf$Weight > 0.0000007, ]
LDAdf8 <- LeadAciddf[LeadAciddf$Weight < 0.0000009 & LeadAciddf$Weight > 0.0000008, ]
LDAdf9 <- LeadAciddf[LeadAciddf$Weight < 0.000001 & LeadAciddf$Weight > 0.0000009, ]
LDAdf10 <- LeadAciddf[LeadAciddf$Weight == 0.000001, ]
plot(x = log(LDAdf10$PktsSize)/log(2), y = LDAdf10$DrainTime, main = "Lead-Acid Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Time to Deplete Energy source(seconds)", type = 'l', col = 'blue')
lines(x = log(LDAdf2$PktsSize)/log(2), y = LDAdf2$DrainTime, type = 'l', col = 'red')
lines(x = log(LDAdf3$PktsSize)/log(2), y = LDAdf3$DrainTime, type = 'l', col = 'green')
lines(x = log(LDAdf4$PktsSize)/log(2), y = LDAdf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(LDAdf5$PktsSize)/log(2), y = LDAdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(LDAdf6$PktsSize)/log(2), y = LDAdf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(LDAdf7$PktsSize)/log(2), y = LDAdf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(LDAdf8$PktsSize)/log(2), y = LDAdf8$DrainTime, type = 'l', col = 'black')
lines(x = log(LDAdf9$PktsSize)/log(2), y = LDAdf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(LDAdf1$PktsSize)/log(2), y = LDAdf1$DrainTime, type = 'l', col = 'gold')

