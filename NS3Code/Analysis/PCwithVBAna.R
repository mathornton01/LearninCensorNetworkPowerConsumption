
pdf("LDADFBAT.pdf")
clmns <- c("BatType","Weight","Energy","DrainTime","PktsSent","PktsSize")
df <- read.table("../../Data/PCwithVB.csv", header = FALSE, quote = "\"", sep = ",", col.names=clmns)
LeadAciddf <- df[df$BatType == 0,]
graph_cols <- c('blue','red', 'green', 'orange', 'yellow', 'purple', 'pink', 'black', 'brown','gold')
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
plot(x = log(LDAdf10$PktsSize)/log(2), y = LDAdf10$DrainTime, main = "Lead-Acid Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(LDAdf2$PktsSize)/log(2), y = LDAdf2$DrainTime, type = 'l', col = 'red')
lines(x = log(LDAdf3$PktsSize)/log(2), y = LDAdf3$DrainTime, type = 'l', col = 'green')
lines(x = log(LDAdf4$PktsSize)/log(2), y = LDAdf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(LDAdf5$PktsSize)/log(2), y = LDAdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(LDAdf6$PktsSize)/log(2), y = LDAdf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(LDAdf7$PktsSize)/log(2), y = LDAdf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(LDAdf8$PktsSize)/log(2), y = LDAdf8$DrainTime, type = 'l', col = 'black')
lines(x = log(LDAdf9$PktsSize)/log(2), y = LDAdf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(LDAdf1$PktsSize)/log(2), y = LDAdf1$DrainTime, type = 'l', col = 'gold')
weights = c('0.1mg', '0.2mg', '0.3mg','0.4mg', '0.5mg', '0.6mg', '0.7mg','0.8mg', '0.9mg', '1mg')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("ALLiBAT.pdf")
ALLidf <- df[df$BatType == 1,]
ALLidf1 <- ALLidf[ALLidf$Weight < 0.0000002, ]
ALLidf2 <- ALLidf[ALLidf$Weight < 0.0000003 & ALLidf$Weight > 0.0000002, ]
ALLidf3 <- ALLidf[ALLidf$Weight == 0.0000003, ]
ALLidf4 <- ALLidf[ALLidf$Weight < 0.00000049 & ALLidf$Weight >0.0000003 , ]
ALLidf5 <- ALLidf[ALLidf$Weight == 0.0000005, ]
ALLidf6 <- ALLidf[ALLidf$Weight == 0.0000006, ]
ALLidf7 <- ALLidf[ALLidf$Weight < 0.0000008 & ALLidf$Weight > 0.0000007, ]
ALLidf8 <- ALLidf[ALLidf$Weight < 0.0000009 & ALLidf$Weight > 0.0000008, ]
ALLidf9 <- ALLidf[ALLidf$Weight < 0.000001 & ALLidf$Weight > 0.0000009, ]
ALLidf10 <- ALLidf[ALLidf$Weight == 0.000001, ]
plot(x = log(ALLidf10$PktsSize)/log(2), y = ALLidf10$DrainTime, main = "Alkaline Long-Life Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(ALLidf2$PktsSize)/log(2), y = ALLidf2$DrainTime, type = 'l', col = 'red')
lines(x = log(ALLidf3$PktsSize)/log(2), y = ALLidf3$DrainTime, type = 'l', col = 'green')
lines(x = log(ALLidf4$PktsSize)/log(2), y = ALLidf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(ALLidf5$PktsSize)/log(2), y = ALLidf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(ALLidf6$PktsSize)/log(2), y = ALLidf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(ALLidf7$PktsSize)/log(2), y = ALLidf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(ALLidf8$PktsSize)/log(2), y = ALLidf8$DrainTime, type = 'l', col = 'black')
lines(x = log(ALLidf9$PktsSize)/log(2), y = ALLidf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(ALLidf1$PktsSize)/log(2), y = ALLidf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("CZBATnonl.pdf")
CZdf <- df[df$BatType == 2,]
CZdf1 <- CZdf[CZdf$Weight < 0.0000002, ]
CZdf2 <- CZdf[CZdf$Weight < 0.0000003 & CZdf$Weight > 0.0000002, ]
CZdf3 <- CZdf[CZdf$Weight == 0.0000003, ]
CZdf4 <- CZdf[CZdf$Weight < 0.00000049 & CZdf$Weight >0.0000003 , ]
CZdf5 <- CZdf[CZdf$Weight == 0.0000005, ]
CZdf6 <- CZdf[CZdf$Weight == 0.0000006, ]
CZdf7 <- CZdf[CZdf$Weight < 0.0000008 & CZdf$Weight > 0.0000007, ]
CZdf8 <- CZdf[CZdf$Weight < 0.0000009 & CZdf$Weight > 0.0000008, ]
CZdf9 <- CZdf[CZdf$Weight < 0.000001 & CZdf$Weight > 0.0000009, ]
CZdf10 <- CZdf[CZdf$Weight == 0.000001, ]
plot(x = log(CZdf10$PktsSize)/log(2), y = CZdf10$DrainTime, main = "Carbon-Zinc Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(CZdf2$PktsSize)/log(2), y = CZdf2$DrainTime, type = 'l', col = 'red')
lines(x = log(CZdf3$PktsSize)/log(2), y = CZdf3$DrainTime, type = 'l', col = 'green')
lines(x = log(CZdf4$PktsSize)/log(2), y = CZdf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(CZdf5$PktsSize)/log(2), y = CZdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(CZdf6$PktsSize)/log(2), y = CZdf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(CZdf7$PktsSize)/log(2), y = CZdf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(CZdf8$PktsSize)/log(2), y = CZdf8$DrainTime, type = 'l', col = 'black')
lines(x = log(CZdf9$PktsSize)/log(2), y = CZdf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(CZdf1$PktsSize)/log(2), y = CZdf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiMHBATnonl.pdf")
NiMHdf <- df[df$BatType == 3,]
NiMHdf1 <- NiMHdf[NiMHdf$Weight < 0.0000002, ]
NiMHdf2 <- NiMHdf[NiMHdf$Weight < 0.0000003 & NiMHdf$Weight > 0.0000002, ]
NiMHdf3 <- NiMHdf[NiMHdf$Weight == 0.0000003, ]
NiMHdf4 <- NiMHdf[NiMHdf$Weight < 0.00000049 & NiMHdf$Weight >0.0000003 , ]
NiMHdf5 <- NiMHdf[NiMHdf$Weight == 0.0000005, ]
NiMHdf6 <- NiMHdf[NiMHdf$Weight == 0.0000006, ]
NiMHdf7 <- NiMHdf[NiMHdf$Weight < 0.0000008 & NiMHdf$Weight > 0.0000007, ]
NiMHdf8 <- NiMHdf[NiMHdf$Weight < 0.0000009 & NiMHdf$Weight > 0.0000008, ]
NiMHdf9 <- NiMHdf[NiMHdf$Weight < 0.000001 & NiMHdf$Weight > 0.0000009, ]
NiMHdf10 <- NiMHdf[NiMHdf$Weight == 0.000001, ]
plot(x = log(NiMHdf10$PktsSize)/log(2), y = NiMHdf10$DrainTime, main = "NiMH Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(NiMHdf2$PktsSize)/log(2), y = NiMHdf2$DrainTime, type = 'l', col = 'red')
lines(x = log(NiMHdf3$PktsSize)/log(2), y = NiMHdf3$DrainTime, type = 'l', col = 'green')
lines(x = log(NiMHdf4$PktsSize)/log(2), y = NiMHdf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(NiMHdf5$PktsSize)/log(2), y = NiMHdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(NiMHdf6$PktsSize)/log(2), y = NiMHdf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(NiMHdf7$PktsSize)/log(2), y = NiMHdf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(NiMHdf8$PktsSize)/log(2), y = NiMHdf8$DrainTime, type = 'l', col = 'black')
lines(x = log(NiMHdf9$PktsSize)/log(2), y = NiMHdf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(NiMHdf1$PktsSize)/log(2), y = NiMHdf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiCadBATnonl.pdf")
NiCaddf <- df[df$BatType == 4,]
NiCaddf1 <- NiCaddf[NiCaddf$Weight < 0.0000002, ]
NiCaddf2 <- NiCaddf[NiCaddf$Weight < 0.0000003 & NiCaddf$Weight > 0.0000002, ]
NiCaddf3 <- NiCaddf[NiCaddf$Weight == 0.0000003, ]
NiCaddf4 <- NiCaddf[NiCaddf$Weight < 0.00000049 & NiCaddf$Weight >0.0000003 , ]
NiCaddf5 <- NiCaddf[NiCaddf$Weight == 0.0000005, ]
NiCaddf6 <- NiCaddf[NiCaddf$Weight == 0.0000006, ]
NiCaddf7 <- NiCaddf[NiCaddf$Weight < 0.0000008 & NiCaddf$Weight > 0.0000007, ]
NiCaddf8 <- NiCaddf[NiCaddf$Weight < 0.0000009 & NiCaddf$Weight > 0.0000008, ]
NiCaddf9 <- NiCaddf[NiCaddf$Weight < 0.000001 & NiCaddf$Weight > 0.0000009, ]
NiCaddf10 <- NiCaddf[NiCaddf$Weight == 0.000001, ]
plot(x = log(NiCaddf10$PktsSize)/log(2), y = NiCaddf10$DrainTime, main = "NiCad Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(NiCaddf2$PktsSize)/log(2), y = NiCaddf2$DrainTime, type = 'l', col = 'red')
lines(x = log(NiCaddf3$PktsSize)/log(2), y = NiCaddf3$DrainTime, type = 'l', col = 'green')
lines(x = log(NiCaddf4$PktsSize)/log(2), y = NiCaddf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(NiCaddf5$PktsSize)/log(2), y = NiCaddf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(NiCaddf6$PktsSize)/log(2), y = NiCaddf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(NiCaddf7$PktsSize)/log(2), y = NiCaddf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(NiCaddf8$PktsSize)/log(2), y = NiCaddf8$DrainTime, type = 'l', col = 'black')
lines(x = log(NiCaddf9$PktsSize)/log(2), y = NiCaddf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(NiCaddf1$PktsSize)/log(2), y = NiCaddf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("LiIonBATnonl.pdf")
LiIondf <- df[df$BatType == 5,]
LiIondf1 <- LiIondf[LiIondf$Weight < 0.0000002, ]
LiIondf2 <- LiIondf[LiIondf$Weight < 0.0000003 & LiIondf$Weight > 0.0000002, ]
LiIondf3 <- LiIondf[LiIondf$Weight == 0.0000003, ]
LiIondf4 <- LiIondf[LiIondf$Weight < 0.00000049 & LiIondf$Weight >0.0000003 , ]
LiIondf5 <- LiIondf[LiIondf$Weight == 0.0000005, ]
LiIondf6 <- LiIondf[LiIondf$Weight == 0.0000006, ]
LiIondf7 <- LiIondf[LiIondf$Weight < 0.0000008 & LiIondf$Weight > 0.0000007, ]
LiIondf8 <- LiIondf[LiIondf$Weight < 0.0000009 & LiIondf$Weight > 0.0000008, ]
LiIondf9 <- LiIondf[LiIondf$Weight < 0.000001 & LiIondf$Weight > 0.0000009, ]
LiIondf10 <- LiIondf[LiIondf$Weight == 0.000001, ]
plot(x = log(LiIondf10$PktsSize)/log(2), y = LiIondf10$DrainTime, main = "Lithium Ion Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(LiIondf2$PktsSize)/log(2), y = LiIondf2$DrainTime, type = 'l', col = 'red')
lines(x = log(LiIondf3$PktsSize)/log(2), y = LiIondf3$DrainTime, type = 'l', col = 'green')
lines(x = log(LiIondf4$PktsSize)/log(2), y = LiIondf4$DrainTime, type = 'l', col = 'orange')
lines(x = log(LiIondf5$PktsSize)/log(2), y = LiIondf5$DrainTime, type = 'l', col = 'yellow')
lines(x = log(LiIondf6$PktsSize)/log(2), y = LiIondf6$DrainTime, type = 'l', col = 'purple')
lines(x = log(LiIondf7$PktsSize)/log(2), y = LiIondf7$DrainTime, type = 'l', col = 'pink')
lines(x = log(LiIondf8$PktsSize)/log(2), y = LiIondf8$DrainTime, type = 'l', col = 'black')
lines(x = log(LiIondf9$PktsSize)/log(2), y = LiIondf9$DrainTime, type = 'l', col = 'brown')
lines(x = log(LiIondf1$PktsSize)/log(2), y = LiIondf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()

pdf("LDADFBATpktnonl.pdf")
clmns <- c("BatType","Weight","Energy","DrainTime","PktsSent","PktsSize")
df <- read.table("../../Data/PCwithVB.csv", header = FALSE, quote = "\"", sep = ",", col.names=clmns)
LeadAciddf <- df[df$BatType == 0,]
graph_cols <- c('blue','red', 'green', 'orange', 'yellow', 'purple', 'pink', 'black', 'brown','gold')
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
plot(x = log(LDAdf10$PktsSize)/log(2), y = LDAdf10$PktsSent, main = "Lead-Acid Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(LDAdf2$PktsSize)/log(2), y = LDAdf2$PktsSent, type = 'l', col = 'red')
lines(x = log(LDAdf3$PktsSize)/log(2), y = LDAdf3$PktsSent, type = 'l', col = 'green')
lines(x = log(LDAdf4$PktsSize)/log(2), y = LDAdf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(LDAdf5$PktsSize)/log(2), y = LDAdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(LDAdf6$PktsSize)/log(2), y = LDAdf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(LDAdf7$PktsSize)/log(2), y = LDAdf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(LDAdf8$PktsSize)/log(2), y = LDAdf8$PktsSent, type = 'l', col = 'black')
lines(x = log(LDAdf9$PktsSize)/log(2), y = LDAdf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(LDAdf1$PktsSize)/log(2), y = LDAdf1$PktsSent, type = 'l', col = 'gold')
weights = c('0.1mg', '0.2mg', '0.3mg','0.4mg', '0.5mg', '0.6mg', '0.7mg','0.8mg', '0.9mg', '1mg')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("ALLiBATpktnonl.pdf")
ALLidf <- df[df$BatType == 1,]
ALLidf1 <- ALLidf[ALLidf$Weight < 0.0000002, ]
ALLidf2 <- ALLidf[ALLidf$Weight < 0.0000003 & ALLidf$Weight > 0.0000002, ]
ALLidf3 <- ALLidf[ALLidf$Weight == 0.0000003, ]
ALLidf4 <- ALLidf[ALLidf$Weight < 0.00000049 & ALLidf$Weight >0.0000003 , ]
ALLidf5 <- ALLidf[ALLidf$Weight == 0.0000005, ]
ALLidf6 <- ALLidf[ALLidf$Weight == 0.0000006, ]
ALLidf7 <- ALLidf[ALLidf$Weight < 0.0000008 & ALLidf$Weight > 0.0000007, ]
ALLidf8 <- ALLidf[ALLidf$Weight < 0.0000009 & ALLidf$Weight > 0.0000008, ]
ALLidf9 <- ALLidf[ALLidf$Weight < 0.000001 & ALLidf$Weight > 0.0000009, ]
ALLidf10 <- ALLidf[ALLidf$Weight == 0.000001, ]
plot(x = log(ALLidf10$PktsSize)/log(2), y = ALLidf10$PktsSent, main = "Alkaline Long-Life Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(ALLidf2$PktsSize)/log(2), y = ALLidf2$PktsSent, type = 'l', col = 'red')
lines(x = log(ALLidf3$PktsSize)/log(2), y = ALLidf3$PktsSent, type = 'l', col = 'green')
lines(x = log(ALLidf4$PktsSize)/log(2), y = ALLidf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(ALLidf5$PktsSize)/log(2), y = ALLidf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(ALLidf6$PktsSize)/log(2), y = ALLidf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(ALLidf7$PktsSize)/log(2), y = ALLidf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(ALLidf8$PktsSize)/log(2), y = ALLidf8$PktsSent, type = 'l', col = 'black')
lines(x = log(ALLidf9$PktsSize)/log(2), y = ALLidf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(ALLidf1$PktsSize)/log(2), y = ALLidf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("CZBATpktnonl.pdf")
CZdf <- df[df$BatType == 2,]
CZdf1 <- CZdf[CZdf$Weight < 0.0000002, ]
CZdf2 <- CZdf[CZdf$Weight < 0.0000003 & CZdf$Weight > 0.0000002, ]
CZdf3 <- CZdf[CZdf$Weight == 0.0000003, ]
CZdf4 <- CZdf[CZdf$Weight < 0.00000049 & CZdf$Weight >0.0000003 , ]
CZdf5 <- CZdf[CZdf$Weight == 0.0000005, ]
CZdf6 <- CZdf[CZdf$Weight == 0.0000006, ]
CZdf7 <- CZdf[CZdf$Weight < 0.0000008 & CZdf$Weight > 0.0000007, ]
CZdf8 <- CZdf[CZdf$Weight < 0.0000009 & CZdf$Weight > 0.0000008, ]
CZdf9 <- CZdf[CZdf$Weight < 0.000001 & CZdf$Weight > 0.0000009, ]
CZdf10 <- CZdf[CZdf$Weight == 0.000001, ]
plot(x = log(CZdf10$PktsSize)/log(2), y = CZdf10$PktsSent, main = "Carbon-Zinc Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(CZdf2$PktsSize)/log(2), y = CZdf2$PktsSent, type = 'l', col = 'red')
lines(x = log(CZdf3$PktsSize)/log(2), y = CZdf3$PktsSent, type = 'l', col = 'green')
lines(x = log(CZdf4$PktsSize)/log(2), y = CZdf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(CZdf5$PktsSize)/log(2), y = CZdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(CZdf6$PktsSize)/log(2), y = CZdf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(CZdf7$PktsSize)/log(2), y = CZdf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(CZdf8$PktsSize)/log(2), y = CZdf8$PktsSent, type = 'l', col = 'black')
lines(x = log(CZdf9$PktsSize)/log(2), y = CZdf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(CZdf1$PktsSize)/log(2), y = CZdf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiMHBATpktnonl.pdf")
NiMHdf <- df[df$BatType == 3,]
NiMHdf1 <- NiMHdf[NiMHdf$Weight < 0.0000002, ]
NiMHdf2 <- NiMHdf[NiMHdf$Weight < 0.0000003 & NiMHdf$Weight > 0.0000002, ]
NiMHdf3 <- NiMHdf[NiMHdf$Weight == 0.0000003, ]
NiMHdf4 <- NiMHdf[NiMHdf$Weight < 0.00000049 & NiMHdf$Weight >0.0000003 , ]
NiMHdf5 <- NiMHdf[NiMHdf$Weight == 0.0000005, ]
NiMHdf6 <- NiMHdf[NiMHdf$Weight == 0.0000006, ]
NiMHdf7 <- NiMHdf[NiMHdf$Weight < 0.0000008 & NiMHdf$Weight > 0.0000007, ]
NiMHdf8 <- NiMHdf[NiMHdf$Weight < 0.0000009 & NiMHdf$Weight > 0.0000008, ]
NiMHdf9 <- NiMHdf[NiMHdf$Weight < 0.000001 & NiMHdf$Weight > 0.0000009, ]
NiMHdf10 <- NiMHdf[NiMHdf$Weight == 0.000001, ]
plot(x = log(NiMHdf10$PktsSize)/log(2), y = NiMHdf10$PktsSent, main = "NiMH Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(NiMHdf2$PktsSize)/log(2), y = NiMHdf2$PktsSent, type = 'l', col = 'red')
lines(x = log(NiMHdf3$PktsSize)/log(2), y = NiMHdf3$PktsSent, type = 'l', col = 'green')
lines(x = log(NiMHdf4$PktsSize)/log(2), y = NiMHdf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(NiMHdf5$PktsSize)/log(2), y = NiMHdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(NiMHdf6$PktsSize)/log(2), y = NiMHdf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(NiMHdf7$PktsSize)/log(2), y = NiMHdf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(NiMHdf8$PktsSize)/log(2), y = NiMHdf8$PktsSent, type = 'l', col = 'black')
lines(x = log(NiMHdf9$PktsSize)/log(2), y = NiMHdf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(NiMHdf1$PktsSize)/log(2), y = NiMHdf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiCadBATpktnonl.pdf")
NiCaddf <- df[df$BatType == 4,]
NiCaddf1 <- NiCaddf[NiCaddf$Weight < 0.0000002, ]
NiCaddf2 <- NiCaddf[NiCaddf$Weight < 0.0000003 & NiCaddf$Weight > 0.0000002, ]
NiCaddf3 <- NiCaddf[NiCaddf$Weight == 0.0000003, ]
NiCaddf4 <- NiCaddf[NiCaddf$Weight < 0.00000049 & NiCaddf$Weight >0.0000003 , ]
NiCaddf5 <- NiCaddf[NiCaddf$Weight == 0.0000005, ]
NiCaddf6 <- NiCaddf[NiCaddf$Weight == 0.0000006, ]
NiCaddf7 <- NiCaddf[NiCaddf$Weight < 0.0000008 & NiCaddf$Weight > 0.0000007, ]
NiCaddf8 <- NiCaddf[NiCaddf$Weight < 0.0000009 & NiCaddf$Weight > 0.0000008, ]
NiCaddf9 <- NiCaddf[NiCaddf$Weight < 0.000001 & NiCaddf$Weight > 0.0000009, ]
NiCaddf10 <- NiCaddf[NiCaddf$Weight == 0.000001, ]
plot(x = log(NiCaddf10$PktsSize)/log(2), y = NiCaddf10$PktsSent, main = "NiCad Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(NiCaddf2$PktsSize)/log(2), y = NiCaddf2$PktsSent, type = 'l', col = 'red')
lines(x = log(NiCaddf3$PktsSize)/log(2), y = NiCaddf3$PktsSent, type = 'l', col = 'green')
lines(x = log(NiCaddf4$PktsSize)/log(2), y = NiCaddf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(NiCaddf5$PktsSize)/log(2), y = NiCaddf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(NiCaddf6$PktsSize)/log(2), y = NiCaddf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(NiCaddf7$PktsSize)/log(2), y = NiCaddf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(NiCaddf8$PktsSize)/log(2), y = NiCaddf8$PktsSent, type = 'l', col = 'black')
lines(x = log(NiCaddf9$PktsSize)/log(2), y = NiCaddf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(NiCaddf1$PktsSize)/log(2), y = NiCaddf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("LiIonBATpktnonl.pdf")
LiIondf <- df[df$BatType == 5,]
LiIondf1 <- LiIondf[LiIondf$Weight < 0.0000002, ]
LiIondf2 <- LiIondf[LiIondf$Weight < 0.0000003 & LiIondf$Weight > 0.0000002, ]
LiIondf3 <- LiIondf[LiIondf$Weight == 0.0000003, ]
LiIondf4 <- LiIondf[LiIondf$Weight < 0.00000049 & LiIondf$Weight >0.0000003 , ]
LiIondf5 <- LiIondf[LiIondf$Weight == 0.0000005, ]
LiIondf6 <- LiIondf[LiIondf$Weight == 0.0000006, ]
LiIondf7 <- LiIondf[LiIondf$Weight < 0.0000008 & LiIondf$Weight > 0.0000007, ]
LiIondf8 <- LiIondf[LiIondf$Weight < 0.0000009 & LiIondf$Weight > 0.0000008, ]
LiIondf9 <- LiIondf[LiIondf$Weight < 0.000001 & LiIondf$Weight > 0.0000009, ]
LiIondf10 <- LiIondf[LiIondf$Weight == 0.000001, ]
plot(x = log(LiIondf10$PktsSize)/log(2), y = LiIondf10$PktsSent, main = "Lithium Ion Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = log(LiIondf2$PktsSize)/log(2), y = LiIondf2$PktsSent, type = 'l', col = 'red')
lines(x = log(LiIondf3$PktsSize)/log(2), y = LiIondf3$PktsSent, type = 'l', col = 'green')
lines(x = log(LiIondf4$PktsSize)/log(2), y = LiIondf4$PktsSent, type = 'l', col = 'orange')
lines(x = log(LiIondf5$PktsSize)/log(2), y = LiIondf5$PktsSent, type = 'l', col = 'yellow')
lines(x = log(LiIondf6$PktsSize)/log(2), y = LiIondf6$PktsSent, type = 'l', col = 'purple')
lines(x = log(LiIondf7$PktsSize)/log(2), y = LiIondf7$PktsSent, type = 'l', col = 'pink')
lines(x = log(LiIondf8$PktsSize)/log(2), y = LiIondf8$PktsSent, type = 'l', col = 'black')
lines(x = log(LiIondf9$PktsSize)/log(2), y = LiIondf9$PktsSent, type = 'l', col = 'brown')
lines(x = log(LiIondf1$PktsSize)/log(2), y = LiIondf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()


pdf("LDADFBATnonl.pdf")
clmns <- c("BatType","Weight","Energy","DrainTime","PktsSent","PktsSize")
df <- read.table("../../Data/PCwithVB.csv", header = FALSE, quote = "\"", sep = ",", col.names=clmns)
LeadAciddf <- df[df$BatType == 0,]
graph_cols <- c('blue','red', 'green', 'orange', 'yellow', 'purple', 'pink', 'black', 'brown','gold')
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
plot(x = LDAdf10$PktsSize, y = LDAdf10$DrainTime, main = "Lead-Acid Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = LDAdf2$PktsSize, y = LDAdf2$DrainTime, type = 'l', col = 'red')
lines(x = LDAdf3$PktsSize, y = LDAdf3$DrainTime, type = 'l', col = 'green')
lines(x = LDAdf4$PktsSize, y = LDAdf4$DrainTime, type = 'l', col = 'orange')
lines(x = LDAdf5$PktsSize, y = LDAdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = LDAdf6$PktsSize, y = LDAdf6$DrainTime, type = 'l', col = 'purple')
lines(x = LDAdf7$PktsSize, y = LDAdf7$DrainTime, type = 'l', col = 'pink')
lines(x = LDAdf8$PktsSize, y = LDAdf8$DrainTime, type = 'l', col = 'black')
lines(x = LDAdf9$PktsSize, y = LDAdf9$DrainTime, type = 'l', col = 'brown')
lines(x = LDAdf1$PktsSize, y = LDAdf1$DrainTime, type = 'l', col = 'gold')
weights = c('0.1mg', '0.2mg', '0.3mg','0.4mg', '0.5mg', '0.6mg', '0.7mg','0.8mg', '0.9mg', '1mg')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("ALLiBATnonl.pdf")
ALLidf <- df[df$BatType == 1,]
ALLidf1 <- ALLidf[ALLidf$Weight < 0.0000002, ]
ALLidf2 <- ALLidf[ALLidf$Weight < 0.0000003 & ALLidf$Weight > 0.0000002, ]
ALLidf3 <- ALLidf[ALLidf$Weight == 0.0000003, ]
ALLidf4 <- ALLidf[ALLidf$Weight < 0.00000049 & ALLidf$Weight >0.0000003 , ]
ALLidf5 <- ALLidf[ALLidf$Weight == 0.0000005, ]
ALLidf6 <- ALLidf[ALLidf$Weight == 0.0000006, ]
ALLidf7 <- ALLidf[ALLidf$Weight < 0.0000008 & ALLidf$Weight > 0.0000007, ]
ALLidf8 <- ALLidf[ALLidf$Weight < 0.0000009 & ALLidf$Weight > 0.0000008, ]
ALLidf9 <- ALLidf[ALLidf$Weight < 0.000001 & ALLidf$Weight > 0.0000009, ]
ALLidf10 <- ALLidf[ALLidf$Weight == 0.000001, ]
plot(x = ALLidf10$PktsSize, y = ALLidf10$DrainTime, main = "Alkaline Long-Life Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = ALLidf2$PktsSize, y = ALLidf2$DrainTime, type = 'l', col = 'red')
lines(x = ALLidf3$PktsSize, y = ALLidf3$DrainTime, type = 'l', col = 'green')
lines(x = ALLidf4$PktsSize, y = ALLidf4$DrainTime, type = 'l', col = 'orange')
lines(x = ALLidf5$PktsSize, y = ALLidf5$DrainTime, type = 'l', col = 'yellow')
lines(x = ALLidf6$PktsSize, y = ALLidf6$DrainTime, type = 'l', col = 'purple')
lines(x = ALLidf7$PktsSize, y = ALLidf7$DrainTime, type = 'l', col = 'pink')
lines(x = ALLidf8$PktsSize, y = ALLidf8$DrainTime, type = 'l', col = 'black')
lines(x = ALLidf9$PktsSize, y = ALLidf9$DrainTime, type = 'l', col = 'brown')
lines(x = ALLidf1$PktsSize, y = ALLidf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("CZBATnonl.pdf")
CZdf <- df[df$BatType == 2,]
CZdf1 <- CZdf[CZdf$Weight < 0.0000002, ]
CZdf2 <- CZdf[CZdf$Weight < 0.0000003 & CZdf$Weight > 0.0000002, ]
CZdf3 <- CZdf[CZdf$Weight == 0.0000003, ]
CZdf4 <- CZdf[CZdf$Weight < 0.00000049 & CZdf$Weight >0.0000003 , ]
CZdf5 <- CZdf[CZdf$Weight == 0.0000005, ]
CZdf6 <- CZdf[CZdf$Weight == 0.0000006, ]
CZdf7 <- CZdf[CZdf$Weight < 0.0000008 & CZdf$Weight > 0.0000007, ]
CZdf8 <- CZdf[CZdf$Weight < 0.0000009 & CZdf$Weight > 0.0000008, ]
CZdf9 <- CZdf[CZdf$Weight < 0.000001 & CZdf$Weight > 0.0000009, ]
CZdf10 <- CZdf[CZdf$Weight == 0.000001, ]
plot(x = CZdf10$PktsSize, y = CZdf10$DrainTime, main = "Carbon-Zinc Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = CZdf2$PktsSize, y = CZdf2$DrainTime, type = 'l', col = 'red')
lines(x = CZdf3$PktsSize, y = CZdf3$DrainTime, type = 'l', col = 'green')
lines(x = CZdf4$PktsSize, y = CZdf4$DrainTime, type = 'l', col = 'orange')
lines(x = CZdf5$PktsSize, y = CZdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = CZdf6$PktsSize, y = CZdf6$DrainTime, type = 'l', col = 'purple')
lines(x = CZdf7$PktsSize, y = CZdf7$DrainTime, type = 'l', col = 'pink')
lines(x = CZdf8$PktsSize, y = CZdf8$DrainTime, type = 'l', col = 'black')
lines(x = CZdf9$PktsSize, y = CZdf9$DrainTime, type = 'l', col = 'brown')
lines(x = CZdf1$PktsSize, y = CZdf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiMHBATnonl.pdf")
NiMHdf <- df[df$BatType == 3,]
NiMHdf1 <- NiMHdf[NiMHdf$Weight < 0.0000002, ]
NiMHdf2 <- NiMHdf[NiMHdf$Weight < 0.0000003 & NiMHdf$Weight > 0.0000002, ]
NiMHdf3 <- NiMHdf[NiMHdf$Weight == 0.0000003, ]
NiMHdf4 <- NiMHdf[NiMHdf$Weight < 0.00000049 & NiMHdf$Weight >0.0000003 , ]
NiMHdf5 <- NiMHdf[NiMHdf$Weight == 0.0000005, ]
NiMHdf6 <- NiMHdf[NiMHdf$Weight == 0.0000006, ]
NiMHdf7 <- NiMHdf[NiMHdf$Weight < 0.0000008 & NiMHdf$Weight > 0.0000007, ]
NiMHdf8 <- NiMHdf[NiMHdf$Weight < 0.0000009 & NiMHdf$Weight > 0.0000008, ]
NiMHdf9 <- NiMHdf[NiMHdf$Weight < 0.000001 & NiMHdf$Weight > 0.0000009, ]
NiMHdf10 <- NiMHdf[NiMHdf$Weight == 0.000001, ]
plot(x = NiMHdf10$PktsSize, y = NiMHdf10$DrainTime, main = "NiMH Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = NiMHdf2$PktsSize, y = NiMHdf2$DrainTime, type = 'l', col = 'red')
lines(x = NiMHdf3$PktsSize, y = NiMHdf3$DrainTime, type = 'l', col = 'green')
lines(x = NiMHdf4$PktsSize, y = NiMHdf4$DrainTime, type = 'l', col = 'orange')
lines(x = NiMHdf5$PktsSize, y = NiMHdf5$DrainTime, type = 'l', col = 'yellow')
lines(x = NiMHdf6$PktsSize, y = NiMHdf6$DrainTime, type = 'l', col = 'purple')
lines(x = NiMHdf7$PktsSize, y = NiMHdf7$DrainTime, type = 'l', col = 'pink')
lines(x = NiMHdf8$PktsSize, y = NiMHdf8$DrainTime, type = 'l', col = 'black')
lines(x = NiMHdf9$PktsSize, y = NiMHdf9$DrainTime, type = 'l', col = 'brown')
lines(x = NiMHdf1$PktsSize, y = NiMHdf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiCadBATnonl.pdf")
NiCaddf <- df[df$BatType == 4,]
NiCaddf1 <- NiCaddf[NiCaddf$Weight < 0.0000002, ]
NiCaddf2 <- NiCaddf[NiCaddf$Weight < 0.0000003 & NiCaddf$Weight > 0.0000002, ]
NiCaddf3 <- NiCaddf[NiCaddf$Weight == 0.0000003, ]
NiCaddf4 <- NiCaddf[NiCaddf$Weight < 0.00000049 & NiCaddf$Weight >0.0000003 , ]
NiCaddf5 <- NiCaddf[NiCaddf$Weight == 0.0000005, ]
NiCaddf6 <- NiCaddf[NiCaddf$Weight == 0.0000006, ]
NiCaddf7 <- NiCaddf[NiCaddf$Weight < 0.0000008 & NiCaddf$Weight > 0.0000007, ]
NiCaddf8 <- NiCaddf[NiCaddf$Weight < 0.0000009 & NiCaddf$Weight > 0.0000008, ]
NiCaddf9 <- NiCaddf[NiCaddf$Weight < 0.000001 & NiCaddf$Weight > 0.0000009, ]
NiCaddf10 <- NiCaddf[NiCaddf$Weight == 0.000001, ]
plot(x = NiCaddf10$PktsSize, y = NiCaddf10$DrainTime, main = "NiCad Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = NiCaddf2$PktsSize, y = NiCaddf2$DrainTime, type = 'l', col = 'red')
lines(x = NiCaddf3$PktsSize, y = NiCaddf3$DrainTime, type = 'l', col = 'green')
lines(x = NiCaddf4$PktsSize, y = NiCaddf4$DrainTime, type = 'l', col = 'orange')
lines(x = NiCaddf5$PktsSize, y = NiCaddf5$DrainTime, type = 'l', col = 'yellow')
lines(x = NiCaddf6$PktsSize, y = NiCaddf6$DrainTime, type = 'l', col = 'purple')
lines(x = NiCaddf7$PktsSize, y = NiCaddf7$DrainTime, type = 'l', col = 'pink')
lines(x = NiCaddf8$PktsSize, y = NiCaddf8$DrainTime, type = 'l', col = 'black')
lines(x = NiCaddf9$PktsSize, y = NiCaddf9$DrainTime, type = 'l', col = 'brown')
lines(x = NiCaddf1$PktsSize, y = NiCaddf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("LiIonBATnonl.pdf")
LiIondf <- df[df$BatType == 5,]
LiIondf1 <- LiIondf[LiIondf$Weight < 0.0000002, ]
LiIondf2 <- LiIondf[LiIondf$Weight < 0.0000003 & LiIondf$Weight > 0.0000002, ]
LiIondf3 <- LiIondf[LiIondf$Weight == 0.0000003, ]
LiIondf4 <- LiIondf[LiIondf$Weight < 0.00000049 & LiIondf$Weight >0.0000003 , ]
LiIondf5 <- LiIondf[LiIondf$Weight == 0.0000005, ]
LiIondf6 <- LiIondf[LiIondf$Weight == 0.0000006, ]
LiIondf7 <- LiIondf[LiIondf$Weight < 0.0000008 & LiIondf$Weight > 0.0000007, ]
LiIondf8 <- LiIondf[LiIondf$Weight < 0.0000009 & LiIondf$Weight > 0.0000008, ]
LiIondf9 <- LiIondf[LiIondf$Weight < 0.000001 & LiIondf$Weight > 0.0000009, ]
LiIondf10 <- LiIondf[LiIondf$Weight == 0.000001, ]
plot(x = LiIondf10$PktsSize, y = LiIondf10$DrainTime, main = "Lithium Ion Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = LiIondf2$PktsSize, y = LiIondf2$DrainTime, type = 'l', col = 'red')
lines(x = LiIondf3$PktsSize, y = LiIondf3$DrainTime, type = 'l', col = 'green')
lines(x = LiIondf4$PktsSize, y = LiIondf4$DrainTime, type = 'l', col = 'orange')
lines(x = LiIondf5$PktsSize, y = LiIondf5$DrainTime, type = 'l', col = 'yellow')
lines(x = LiIondf6$PktsSize, y = LiIondf6$DrainTime, type = 'l', col = 'purple')
lines(x = LiIondf7$PktsSize, y = LiIondf7$DrainTime, type = 'l', col = 'pink')
lines(x = LiIondf8$PktsSize, y = LiIondf8$DrainTime, type = 'l', col = 'black')
lines(x = LiIondf9$PktsSize, y = LiIondf9$DrainTime, type = 'l', col = 'brown')
lines(x = LiIondf1$PktsSize, y = LiIondf1$DrainTime, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()

pdf("LDADFBATpktnonl.pdf")
clmns <- c("BatType","Weight","Energy","DrainTime","PktsSent","PktsSize")
df <- read.table("../../Data/PCwithVB.csv", header = FALSE, quote = "\"", sep = ",", col.names=clmns)
LeadAciddf <- df[df$BatType == 0,]
graph_cols <- c('blue','red', 'green', 'orange', 'yellow', 'purple', 'pink', 'black', 'brown','gold')
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
plot(x = LDAdf10$PktsSize, y = LDAdf10$PktsSent, main = "Lead-Acid Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = LDAdf2$PktsSize, y = LDAdf2$PktsSent, type = 'l', col = 'red')
lines(x = LDAdf3$PktsSize, y = LDAdf3$PktsSent, type = 'l', col = 'green')
lines(x = LDAdf4$PktsSize, y = LDAdf4$PktsSent, type = 'l', col = 'orange')
lines(x = LDAdf5$PktsSize, y = LDAdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = LDAdf6$PktsSize, y = LDAdf6$PktsSent, type = 'l', col = 'purple')
lines(x = LDAdf7$PktsSize, y = LDAdf7$PktsSent, type = 'l', col = 'pink')
lines(x = LDAdf8$PktsSize, y = LDAdf8$PktsSent, type = 'l', col = 'black')
lines(x = LDAdf9$PktsSize, y = LDAdf9$PktsSent, type = 'l', col = 'brown')
lines(x = LDAdf1$PktsSize, y = LDAdf1$PktsSent, type = 'l', col = 'gold')
weights = c('0.1mg', '0.2mg', '0.3mg','0.4mg', '0.5mg', '0.6mg', '0.7mg','0.8mg', '0.9mg', '1mg')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("ALLiBATpktnonl.pdf")
ALLidf <- df[df$BatType == 1,]
ALLidf1 <- ALLidf[ALLidf$Weight < 0.0000002, ]
ALLidf2 <- ALLidf[ALLidf$Weight < 0.0000003 & ALLidf$Weight > 0.0000002, ]
ALLidf3 <- ALLidf[ALLidf$Weight == 0.0000003, ]
ALLidf4 <- ALLidf[ALLidf$Weight < 0.00000049 & ALLidf$Weight >0.0000003 , ]
ALLidf5 <- ALLidf[ALLidf$Weight == 0.0000005, ]
ALLidf6 <- ALLidf[ALLidf$Weight == 0.0000006, ]
ALLidf7 <- ALLidf[ALLidf$Weight < 0.0000008 & ALLidf$Weight > 0.0000007, ]
ALLidf8 <- ALLidf[ALLidf$Weight < 0.0000009 & ALLidf$Weight > 0.0000008, ]
ALLidf9 <- ALLidf[ALLidf$Weight < 0.000001 & ALLidf$Weight > 0.0000009, ]
ALLidf10 <- ALLidf[ALLidf$Weight == 0.000001, ]
plot(x = ALLidf10$PktsSize, y = ALLidf10$PktsSent, main = "Alkaline Long-Life Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = ALLidf2$PktsSize, y = ALLidf2$PktsSent, type = 'l', col = 'red')
lines(x = ALLidf3$PktsSize, y = ALLidf3$PktsSent, type = 'l', col = 'green')
lines(x = ALLidf4$PktsSize, y = ALLidf4$PktsSent, type = 'l', col = 'orange')
lines(x = ALLidf5$PktsSize, y = ALLidf5$PktsSent, type = 'l', col = 'yellow')
lines(x = ALLidf6$PktsSize, y = ALLidf6$PktsSent, type = 'l', col = 'purple')
lines(x = ALLidf7$PktsSize, y = ALLidf7$PktsSent, type = 'l', col = 'pink')
lines(x = ALLidf8$PktsSize, y = ALLidf8$PktsSent, type = 'l', col = 'black')
lines(x = ALLidf9$PktsSize, y = ALLidf9$PktsSent, type = 'l', col = 'brown')
lines(x = ALLidf1$PktsSize, y = ALLidf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("CZBATpktnonl.pdf")
CZdf <- df[df$BatType == 2,]
CZdf1 <- CZdf[CZdf$Weight < 0.0000002, ]
CZdf2 <- CZdf[CZdf$Weight < 0.0000003 & CZdf$Weight > 0.0000002, ]
CZdf3 <- CZdf[CZdf$Weight == 0.0000003, ]
CZdf4 <- CZdf[CZdf$Weight < 0.00000049 & CZdf$Weight >0.0000003 , ]
CZdf5 <- CZdf[CZdf$Weight == 0.0000005, ]
CZdf6 <- CZdf[CZdf$Weight == 0.0000006, ]
CZdf7 <- CZdf[CZdf$Weight < 0.0000008 & CZdf$Weight > 0.0000007, ]
CZdf8 <- CZdf[CZdf$Weight < 0.0000009 & CZdf$Weight > 0.0000008, ]
CZdf9 <- CZdf[CZdf$Weight < 0.000001 & CZdf$Weight > 0.0000009, ]
CZdf10 <- CZdf[CZdf$Weight == 0.000001, ]
plot(x = CZdf10$PktsSize, y = CZdf10$PktsSent, main = "Carbon-Zinc Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = CZdf2$PktsSize, y = CZdf2$PktsSent, type = 'l', col = 'red')
lines(x = CZdf3$PktsSize, y = CZdf3$PktsSent, type = 'l', col = 'green')
lines(x = CZdf4$PktsSize, y = CZdf4$PktsSent, type = 'l', col = 'orange')
lines(x = CZdf5$PktsSize, y = CZdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = CZdf6$PktsSize, y = CZdf6$PktsSent, type = 'l', col = 'purple')
lines(x = CZdf7$PktsSize, y = CZdf7$PktsSent, type = 'l', col = 'pink')
lines(x = CZdf8$PktsSize, y = CZdf8$PktsSent, type = 'l', col = 'black')
lines(x = CZdf9$PktsSize, y = CZdf9$PktsSent, type = 'l', col = 'brown')
lines(x = CZdf1$PktsSize, y = CZdf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiMHBATpktnonl.pdf")
NiMHdf <- df[df$BatType == 3,]
NiMHdf1 <- NiMHdf[NiMHdf$Weight < 0.0000002, ]
NiMHdf2 <- NiMHdf[NiMHdf$Weight < 0.0000003 & NiMHdf$Weight > 0.0000002, ]
NiMHdf3 <- NiMHdf[NiMHdf$Weight == 0.0000003, ]
NiMHdf4 <- NiMHdf[NiMHdf$Weight < 0.00000049 & NiMHdf$Weight >0.0000003 , ]
NiMHdf5 <- NiMHdf[NiMHdf$Weight == 0.0000005, ]
NiMHdf6 <- NiMHdf[NiMHdf$Weight == 0.0000006, ]
NiMHdf7 <- NiMHdf[NiMHdf$Weight < 0.0000008 & NiMHdf$Weight > 0.0000007, ]
NiMHdf8 <- NiMHdf[NiMHdf$Weight < 0.0000009 & NiMHdf$Weight > 0.0000008, ]
NiMHdf9 <- NiMHdf[NiMHdf$Weight < 0.000001 & NiMHdf$Weight > 0.0000009, ]
NiMHdf10 <- NiMHdf[NiMHdf$Weight == 0.000001, ]
plot(x = NiMHdf10$PktsSize, y = NiMHdf10$PktsSent, main = "NiMH Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = NiMHdf2$PktsSize, y = NiMHdf2$PktsSent, type = 'l', col = 'red')
lines(x = NiMHdf3$PktsSize, y = NiMHdf3$PktsSent, type = 'l', col = 'green')
lines(x = NiMHdf4$PktsSize, y = NiMHdf4$PktsSent, type = 'l', col = 'orange')
lines(x = NiMHdf5$PktsSize, y = NiMHdf5$PktsSent, type = 'l', col = 'yellow')
lines(x = NiMHdf6$PktsSize, y = NiMHdf6$PktsSent, type = 'l', col = 'purple')
lines(x = NiMHdf7$PktsSize, y = NiMHdf7$PktsSent, type = 'l', col = 'pink')
lines(x = NiMHdf8$PktsSize, y = NiMHdf8$PktsSent, type = 'l', col = 'black')
lines(x = NiMHdf9$PktsSize, y = NiMHdf9$PktsSent, type = 'l', col = 'brown')
lines(x = NiMHdf1$PktsSize, y = NiMHdf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("NiCadBATpktnonl.pdf")
NiCaddf <- df[df$BatType == 4,]
NiCaddf1 <- NiCaddf[NiCaddf$Weight < 0.0000002, ]
NiCaddf2 <- NiCaddf[NiCaddf$Weight < 0.0000003 & NiCaddf$Weight > 0.0000002, ]
NiCaddf3 <- NiCaddf[NiCaddf$Weight == 0.0000003, ]
NiCaddf4 <- NiCaddf[NiCaddf$Weight < 0.00000049 & NiCaddf$Weight >0.0000003 , ]
NiCaddf5 <- NiCaddf[NiCaddf$Weight == 0.0000005, ]
NiCaddf6 <- NiCaddf[NiCaddf$Weight == 0.0000006, ]
NiCaddf7 <- NiCaddf[NiCaddf$Weight < 0.0000008 & NiCaddf$Weight > 0.0000007, ]
NiCaddf8 <- NiCaddf[NiCaddf$Weight < 0.0000009 & NiCaddf$Weight > 0.0000008, ]
NiCaddf9 <- NiCaddf[NiCaddf$Weight < 0.000001 & NiCaddf$Weight > 0.0000009, ]
NiCaddf10 <- NiCaddf[NiCaddf$Weight == 0.000001, ]
plot(x = NiCaddf10$PktsSize, y = NiCaddf10$PktsSent, main = "NiCad Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = NiCaddf2$PktsSize, y = NiCaddf2$PktsSent, type = 'l', col = 'red')
lines(x = NiCaddf3$PktsSize, y = NiCaddf3$PktsSent, type = 'l', col = 'green')
lines(x = NiCaddf4$PktsSize, y = NiCaddf4$PktsSent, type = 'l', col = 'orange')
lines(x = NiCaddf5$PktsSize, y = NiCaddf5$PktsSent, type = 'l', col = 'yellow')
lines(x = NiCaddf6$PktsSize, y = NiCaddf6$PktsSent, type = 'l', col = 'purple')
lines(x = NiCaddf7$PktsSize, y = NiCaddf7$PktsSent, type = 'l', col = 'pink')
lines(x = NiCaddf8$PktsSize, y = NiCaddf8$PktsSent, type = 'l', col = 'black')
lines(x = NiCaddf9$PktsSize, y = NiCaddf9$PktsSent, type = 'l', col = 'brown')
lines(x = NiCaddf1$PktsSize, y = NiCaddf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()
pdf("LiIonBATpktnonl.pdf")
LiIondf <- df[df$BatType == 5,]
LiIondf1 <- LiIondf[LiIondf$Weight < 0.0000002, ]
LiIondf2 <- LiIondf[LiIondf$Weight < 0.0000003 & LiIondf$Weight > 0.0000002, ]
LiIondf3 <- LiIondf[LiIondf$Weight == 0.0000003, ]
LiIondf4 <- LiIondf[LiIondf$Weight < 0.00000049 & LiIondf$Weight >0.0000003 , ]
LiIondf5 <- LiIondf[LiIondf$Weight == 0.0000005, ]
LiIondf6 <- LiIondf[LiIondf$Weight == 0.0000006, ]
LiIondf7 <- LiIondf[LiIondf$Weight < 0.0000008 & LiIondf$Weight > 0.0000007, ]
LiIondf8 <- LiIondf[LiIondf$Weight < 0.0000009 & LiIondf$Weight > 0.0000008, ]
LiIondf9 <- LiIondf[LiIondf$Weight < 0.000001 & LiIondf$Weight > 0.0000009, ]
LiIondf10 <- LiIondf[LiIondf$Weight == 0.000001, ]
plot(x = LiIondf10$PktsSize, y = LiIondf10$PktsSent, main = "Lithium Ion Batteries",xlab = "Packet Size(lg(bytes))", ylab = "Number of Packets Received", type = 'l', col = 'blue')
lines(x = LiIondf2$PktsSize, y = LiIondf2$PktsSent, type = 'l', col = 'red')
lines(x = LiIondf3$PktsSize, y = LiIondf3$PktsSent, type = 'l', col = 'green')
lines(x = LiIondf4$PktsSize, y = LiIondf4$PktsSent, type = 'l', col = 'orange')
lines(x = LiIondf5$PktsSize, y = LiIondf5$PktsSent, type = 'l', col = 'yellow')
lines(x = LiIondf6$PktsSize, y = LiIondf6$PktsSent, type = 'l', col = 'purple')
lines(x = LiIondf7$PktsSize, y = LiIondf7$PktsSent, type = 'l', col = 'pink')
lines(x = LiIondf8$PktsSize, y = LiIondf8$PktsSent, type = 'l', col = 'black')
lines(x = LiIondf9$PktsSize, y = LiIondf9$PktsSent, type = 'l', col = 'brown')
lines(x = LiIondf1$PktsSize, y = LiIondf1$PktsSent, type = 'l', col = 'gold')
legend("topright", weights, cex=0.8, col=graph_cols, lwd=2);
dev.off()