fl <- "E:\\college\\5th sem\\data sci\\mini proj\\mp2\\FSMEAN ICT INDIV.csv"
M<-read.table(file = fl, header = TRUE, sep = ",")
M.dist <- dist(M, method = "euclidean")
Mh1 <- hclust(M.dist, method = "single")
Mh2 <- hclust(M.dist, method = "complete")
Mh3 <- hclust(M.dist, method = "average")
Mh4 <- hclust(M.dist, method = "centroid")
Mh5 <- hclust(M.dist, method = "ward.D")

plot(Mh1,main="fsmean single",hang=-1,cex=1)
rect.hclust(Mh5, k = 4, border = "red")

plot(Mh2,main="fsmean complete",hang=-1,cex=1)
rect.hclust(Mh5, k = 4, border = "red")

plot(Mh3,main="fsmean average",hang=-1,cex=1)
rect.hclust(Mh5, k = 4, border = "red")

plot(Mh4,main="fsmean centroid",hang=-1,cex=1)
rect.hclust(Mh5, k = 4, border = "red")

plot(Mh5,main="fsmean ward.D",hang=-1,cex=1)
rect.hclust(Mh5, k = 4, border = "red")
