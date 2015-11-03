#Started by Vivek
#Oct 16, 2015
#Explore the CitySourced Data!

CitySourced<- read.delim("~/Github/open311-plan-for-san-jose/2015-10-14-21-49-388.csv",sep="|", skip=0, check.names=FALSE,quote = "",
           header=T)
str(CitySourced)
summary(CitySourced)
count(CitySourced$RequestType)

CitySourced$Description
summary(CitySourced$DeviceType)
summary(CitySourced$HasBeenForwarded)
summary(CitySourced$InitialBoundaryName)
summary(CitySourced$Latitude)
summary(CitySourced$Longitude)
#plot(CitySourced$Longitude)

count(CitySourced$DeviceModel)
#write.csv(CitySourced, file = "San_Jose_Citysourced.csv", sep = ',')

str(CitySourced)
CitySourced$DateCreated<- as.character(CitySourced$DateCreated)
CitySourced$DateCreated
Tasks_Merged$End <- as.Date(as.character(Tasks_Merged$ActivityDate), "%Y-%m-%d")

CitySourced$DateCreated<- as.Date(CitySourced$DateCreated, "%m/%d/%Y")

CitySourced$CreatedYear<-year(CitySourced$DateCreated)

str(subset(CitySourced, CitySourced$CreatedYear == "2015"))
summary(CitySourced$CreatedYear)

count(CitySourced$CreatedYear)

TO15<- subset(CitySourced, CitySourced$CreatedYear == "2015")
TO14<- subset(CitySourced, CitySourced$CreatedYear == "2014")

summary(TO15$DeviceType)
summary(TO15$DeviceModel)
count(TO15$DeviceModel)
count(TO14$DeviceModel)

count(CitySourced$RequestType, sort = TRUE)
CitySourced$RequestType
sort(table(CitySourced$RequestType))

OtherIssues<- subset(CitySourced, CitySourced$RequestType == "Other (Please Describe)")
InformationOnly<- subset(CitySourced, CitySourced$RequestType == "Information Only (Please Describe)")

str(OtherIssues)
OtherIssues$Description
InformationOnly[225,]

OtherIssues[323,]

OtherIssues$Description[19]
OtherIssues[64,]
OtherIssues[65,]
