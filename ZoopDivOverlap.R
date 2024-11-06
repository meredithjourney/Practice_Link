#Meredith Journey
#zooplankotn sample composition overlap
#created: 10 14 2024
#edited:

#install.packages("RInSp")
require(RInSp)

data = read.csv("/Users/meredithjourney/Downloads/Vert_Surf_foroverlap.csv")
d_surf = data[data$Lake=="Daphne_Surf_24",]
d_vert = data[data$Lake=="Daphne_Vert_24",]

d = rbind(d_surf, d_vert)
context_d = import.RInSp(d, row.names= 1, info.cols=2)
similarity = overlap(context_d)
zoop.similarity <- as.dist(similarity$overlapmatrix)
zoop.similarity

d_surf = data[data$Lake=="RockingHorse_Surf_24",]
d_vert = data[data$Lake=="RockingHorse_Vert_24",]

d = rbind(d_surf, d_vert)
context_d = import.RInSp(d, row.names= 1, info.cols=2)
similarity = overlap(context_d)
zoop.similarity <- as.dist(similarity$overlapmatrix)
zoop.similarity