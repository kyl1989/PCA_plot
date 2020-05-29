# PCA_plot
按格式编好sample.txt和group.txt，运行脚本，选择sample.txt和group.txt存放的文件夹，即生成图

#首先是数据处理，可以用pca <- prcomp(data,scale = TRUE)得到pca画图用的数据，把组信息合并进去，就可以画图了
#df_pcs = read.table('C:\\Users\\lizk\\Desktop\\pca41836f\\pca41836f\\temp.dat.PC_data.xls', header = TRUE)
#ggplot(df_pcs,aes(x=PC1,y=PC2,color = group))+ geom_point()+stat_ellipse(level = 0.95, show.legend = F)
#可参考：https://www.plob.org/article/22240.html
#相关性https://www.jianshu.com/p/b76f09aacd9c
