library(igraph)
nodes <- read.csv("nodes.csv", header=T, as.is=T)
links <- read.csv("edges.csv", header=T, as.is=T)
head(nodes)
head(links)

net <- graph_from_data_frame(d=links, vertices=nodes, directed=F) 

plot(net, vertex.color=pal2, main="LFR Graph")

#clustering coeff
transitivity(net)

#Girvan Newman
ceb <- cluster_edge_betweenness(net) 
#Community plot
plot(ceb, net, main="Girvan-Newman Algorithm")
#modularity
modularity(ceb)
#no
length(ceb)

#Label propagation
clp <- cluster_label_prop(net)
#Community plot
plot(clp, net, main="Label Propagation Algorithm")
#modularity
modularity(clp)
#no
length(clp)

#Fast greedy optimization
cfg <- cluster_fast_greedy(as.undirected(net))
#Community plot
plot(cfg, as.undirected(net), main="Fast Greedy Algorithm")
#modularity
modularity(cfg)
#no
length(cfg)

#Spinglass algorithm
sg <- cluster_spinglass(net, spins = 10, start.temp = 1, stop.temp = 0.01,
                        cool.fact = 0.99, update.rule = "random",
                        gamma = 1)
#Community plot
plot(sg, net, main="Spin-Glass Algorithm")
#modularity
modularity(sg)
#no
length(sg)

#Walktrap
wtc <- cluster_walktrap(net)
#Community plot
plot(wtc, net, main="WalkTrap Algorithm")
#modularity
modularity(wtc)
#no
length(wtc)

#Multilevel
lvn <- cluster_louvain(net)
#Community plot
plot(lvn, net, main="Louvain Algorithm")
#modularity
modularity(lvn)
#no
length(lvn)

#infomap
ifm <- cluster_infomap(net, nb.trials = 10, modularity = TRUE)
#Community plot
plot(ifm, net, main="Infomap Algorithm")
#modularity
modularity(ifm)
#no
length(ifm)

#Leading eigenvector
lev <- cluster_leading_eigen(net)
#Community plot
plot(lev, net, main="Leading Eigenvector Algorithm")
#modularity
modularity(lev)
#no
length(lev)