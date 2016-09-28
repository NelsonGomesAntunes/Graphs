library(igraph);
nv=1000;
density=100/nv;
g <- erdos.renyi.game(nv, density);

adj_matrix<-get.adjacency(g);
#N=degree_distribution(g)*nv;
nodes_degree=degree(g);
N=table(nodes_degree);
p=0.1;

#Ego-centric sampling

Pego=p*diag(nv-1);
nodes_s_ego <- sample_seq(1, nv, sum(rbinom(nv, 1, p)));
nodes_degree_sample=nodes_degree[nodes_s_ego];
N_hat_naive=table(nodes_degree_sample)/p;  

plot(N);
plot(N_hat_naive);

#


