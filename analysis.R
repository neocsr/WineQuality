wine <- read.csv('winequality-red.csv', header = TRUE, sep = ";")

hist(wine$quality, col = "lightblue", main = "Wine Quality", xlab = "Quality")
plot(wine$quality, wine$volatile.acidity, col = "lightblue", main = "Wine", xlab = "Quality", ylab = "Volatile Acidity")
boxplot(volatile.acidity ~ quality, data = wine, col = "orange", main = "Wine", xlab = "Quality", ylab = "Volatile Acidity")
