library(ggplot2)

setwd(choose.dir())
sample_info = read.table('sample.txt', header = T, row.names = 1, sep = '\t')
group_info = read.table('group.txt', sep = '\t')

sample_nor = scale(t(sample_info))
sample_pca = prcomp(sample_nor)
sample_pcg = data.frame(sample_pca$x,Group = group_info$V2)
percentage = summary(sample_pca)$importance[2,]*100
percentage = round(percentage,2)

p = ggplot(sample_pcg,aes(x=PC1,y=PC2,color = Group))+ geom_point()+stat_ellipse(level = 0.95, show.legend = F) +xlab(paste('PC1(',percentage[1],'%)'))+ylab(paste('PC2(',percentage[2],'%)'))
ggsave(plot = p, filename = 'PCA plot.pdf')