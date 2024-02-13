library(glmulti)
library(ggplot2)


### Loading in and Cleaning data
dat <- read.csv("rat_det.csv")
dat$period <- as.character(dat$period)
dat$native <- as.character(dat$native)
dat$site <- as.numeric(dat$site)
dat$night <- as.numeric(dat$night)

###Running linear regression
global_model <- lm(rat ~ habitat + distance + native + period,
                   data = dat)
global_model
summary(global_model)
all.models <- glmulti(global_model, level = 1, minsize = 1,  crit = "aicc")
all.models
weightable(all.models)


### Cleaning and loading in occupancy model data
data<-read.csv("detHis.csv")
y<-data[,2:5]
n<-nrow(data)
rdg.site<-data[,6:8]

##Running occupancy model
rd <- unmarkedFrameOccu(y = y, siteCovs = rdg.site, obsCovs = )
summary(rd)
fm1<-occu(~1 ~1,rd)
fm1
summary(fm1)

backTransform(fm1,'state')
fm1CIO <- confint(fm1, type = "state")
fm1CIO

#backtransformed detection prob
backTransform(fm1,'det')
fm1CID <- confint(fm1, type = "det")
fm1CID


fm3<-occu(~1 ~rdg.site,rd)
fm3

fm2 <- occu(~ HABITAT + human.dist ~ 1, rd)
fm2

#constant occupancy (variable detection) via habitat
fm4 <- occu(~ HABITAT ~ 1, rd)
fm4

#constant detection via habitat
fm5 <- occu(~ 1 ~ HABITAT, rd)
fm5

#variable occupancy and detection via habitat
fm6 <- occu(~ HABITAT ~ HABITAT, rd)
fm6

