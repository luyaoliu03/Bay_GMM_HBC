rm(list=ls())
setwd("F:/Doris/Ad-hoc/Bay GMM")

### Read and trim the data frames
hbn_gmm1 <- read.csv('hbn_gmm1_FY19_mktchan.csv')
hbn_gmm2 <- read.csv('hbn_gmm2_FY19_mktchan.csv')
hbn_gmm5 <- read.csv('hbn_gmm5_FY19_mktchan.csv')
hbn_gmm7 <- read.csv('hbn_gmm7_FY19_mktchan.csv')
hbapp_gmm1 <- read.csv('hbapp_gmm1_FY19_mktchan.csv')
hbapp_gmm2 <- read.csv('hbapp_gmm2_FY19_mktchan.csv')
hbapp_gmm5 <- read.csv('hbapp_gmm5_FY19_mktchan.csv')
hbapp_gmm7 <- read.csv('hbapp_gmm7_FY19_mktchan.csv')


### Add Suite column, append site & iOS, and adjust the column names

hbn_gmm1 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm1)
hbn_gmm2 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm2)
hbn_gmm5 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm5)
hbn_gmm7 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm7)
hbapp_gmm1 <- cbind(Suite = 'Bay | Ios', hbapp_gmm1)
hbapp_gmm2 <- cbind(Suite = 'Bay | Ios', hbapp_gmm2)
hbapp_gmm5 <- cbind(Suite = 'Bay | Ios', hbapp_gmm5)
hbapp_gmm7 <- cbind(Suite = 'Bay | Ios', hbapp_gmm7)

hb_gmm1 <- rbind(hbn_gmm1, hbapp_gmm1)
hb_gmm2 <- rbind(hbn_gmm2, hbapp_gmm2)
hb_gmm5 <- rbind(hbn_gmm5, hbapp_gmm5)
hb_gmm7 <- rbind(hbn_gmm7, hbapp_gmm7)

set.names<- c('Suite', 'Brand Name', 'Marketing Channel', 'Visits', 'Orders', 'Revenue')

colnames(hb_gmm1) <- set.names
colnames(hb_gmm2) <- set.names
colnames(hb_gmm5) <- set.names
colnames(hb_gmm7) <- set.names


### Save files

write.csv(hb_gmm1, 'hb_gmm1_brand_mktchannel_fy19.csv')
write.csv(hb_gmm2, 'hb_gmm2_brand_mktchannel_fy19.csv')
write.csv(hb_gmm5, 'hb_gmm5_brand_mktchannel_fy19.csv')
write.csv(hb_gmm7, 'hb_gmm7_brand_mktchannel_fy19.csv')


##### V2: After Omniture Lookup Update #####

### Read and trim the data frames
hbn_gmm1_v2 <- read.csv('hbn_gmm1_FY19_mktchan_v2.csv')
hbn_gmm2_v2 <- read.csv('hbn_gmm2_FY19_mktchan_v2.csv')
hbn_gmm5_v2 <- read.csv('hbn_gmm5_FY19_mktchan_v2.csv')
hbn_gmm7_v2 <- read.csv('hbn_gmm7_FY19_mktchan_v2.csv')
hbapp_gmm1_v2 <- read.csv('hbapp_gmm1_FY19_mktchan_v2.csv')
hbapp_gmm2_v2 <- read.csv('hbapp_gmm2_FY19_mktchan_v2.csv')
hbapp_gmm5_v2 <- read.csv('hbapp_gmm5_FY19_mktchan_v2.csv')
hbapp_gmm7_v2 <- read.csv('hbapp_gmm7_FY19_mktchan_v2.csv')

### Add Suite column, append site & iOS, and adjust the column names
hbn_gmm1_v2 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm1_v2)
hbn_gmm2_v2 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm2_v2)
hbn_gmm5_v2 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm5_v2)
hbn_gmm7_v2 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm7_v2)
hbapp_gmm1_v2 <- cbind(Suite = 'Bay | Ios', hbapp_gmm1_v2)
hbapp_gmm2_v2 <- cbind(Suite = 'Bay | Ios', hbapp_gmm2_v2)
hbapp_gmm5_v2 <- cbind(Suite = 'Bay | Ios', hbapp_gmm5_v2)
hbapp_gmm7_v2 <- cbind(Suite = 'Bay | Ios', hbapp_gmm7_v2)

hb_gmm1_v2 <- rbind(hbn_gmm1_v2, hbapp_gmm1_v2)
hb_gmm2_v2 <- rbind(hbn_gmm2_v2, hbapp_gmm2_v2)
hb_gmm5_v2 <- rbind(hbn_gmm5_v2, hbapp_gmm5_v2)
hb_gmm7_v2 <- rbind(hbn_gmm7_v2, hbapp_gmm7_v2)

set.names<- c('Suite', 'Brand Name', 'Marketing Channel', 'Visits', 'Orders', 'Revenue')

colnames(hb_gmm1_v2) <- set.names
colnames(hb_gmm2_v2) <- set.names
colnames(hb_gmm5_v2) <- set.names
colnames(hb_gmm7_v2) <- set.names

### Save files

write.csv(hb_gmm1_v2, 'hb_gmm1_brand_mktchannel_fy19_v2.csv')
write.csv(hb_gmm2_v2, 'hb_gmm2_brand_mktchannel_fy19_v2.csv')
write.csv(hb_gmm5_v2, 'hb_gmm5_brand_mktchannel_fy19_v2.csv')
write.csv(hb_gmm7_v2, 'hb_gmm7_brand_mktchannel_fy19_v2.csv')


##### Add GMM 4 Report #####
hbn_gmm4 <- read.csv('hbn_gmm4_FY19_mktchan_v2.csv')
hbapp_gmm4 <- read.csv('hbapp_gmm4_FY19_mktchan_v2.csv')

hbn_gmm4 <- cbind(Suite = 'Bay | .com | NEW', hbn_gmm4)
hbapp_gmm4 <- cbind(Suite = 'Bay | Ios', hbapp_gmm4)
hb_gmm4 <- rbind(hbn_gmm4, hbapp_gmm4)

set.names<- c('Suite', 'Brand Name', 'Marketing Channel', 'Visits', 'Orders', 'Revenue')
colnames(hb_gmm4) <- set.names

write.csv(hb_gmm4, 'hb_gmm4_brand_mktchannel_fy19.csv')

