library(ggplot2)
library(reshape2)


source('Scripts/read_data.R')


#Check to see if any covariates are highly correlated with another
continuous_var <- bikes[,c(6,7,8,9)]
cormat <- round(cor(continuous_var),2)
melted <- melt(cormat)


p <- ggplot(data = melted, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

ggsave("Figures/correlation_matrix.png",plot=p)

p