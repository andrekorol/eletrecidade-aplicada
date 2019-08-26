library(ggplot2)

x_axis <- c(0.86, 1.73, 3.47, 4.19, 5.49)
y_axis <- c(4.9, 9.9, 19.8, 23.6, 31.3)

dd <- data.frame(x_axis, y_axis)

g <- ggplot(dd, aes(x=x_axis, y=y_axis)) +
  geom_point(col = "darkgoldenrod", size = 4) +
  geom_smooth(method = "lm") +
  labs(title = "R =  180Ω (valores experimentais)", y = "I (mA)", x = "E (V)") +
  theme(plot.title = element_text(hjust = 0.5))

plot(g)