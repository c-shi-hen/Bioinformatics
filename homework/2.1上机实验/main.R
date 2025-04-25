x = data.frame(iris)

print("iris data set")
print("-------------------------------")
# 查看数据集的行数和列数
print(paste("row:", nrow(x)))
print(paste("column:", ncol(x)))
print("-------------------------------")

print("data type of each column")
print("-------------------------------")
# 每一列的数据类型
for (i in seq(from=1, to=ncol(x), by=1)) {
   print(paste("column:", i , "type:", class(x[,i])))
}
print("-------------------------------")

# 分别计算均值和方差
res1 = aggregate(Sepal.Length ~ Species, x, mean)
res2 = aggregate(Sepal.Length ~ Species, x, sd)
species = c(res1$Species)
means = c(res1$Sepal.Length)
sds = c(res2$Sepal.Length)

# 将结果保存到data.frame中
result = data.frame(species, means, sds)
print("result of mean and sd:")
print("-------------------------------")
print(result)
print("-------------------------------")

# 将结果保存到csv文件中
write.csv(result, "result.csv")

# One way anova分析
print("One way anova analysis:")
print("-------------------------------")
table = data.frame(x$Sepal.Length, x$Species)
anova = summary(aov(x.Sepal.Length ~ x.Species, data=table))
print(anova)
print("-------------------------------")