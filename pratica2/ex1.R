library(ggplot2)

x_axis <- c(1, 2, 4, 5, 6)
y_axis <- c(5.556, 11.11, 22.22, 27.77, 33.33)

dd <- data.frame(x_axis, y_axis)

g <- ggplot(dd, aes(x=x_axis, y=y_axis)) +
  geom_point(col = "blue", size = 3) +
  geom_smooth(method = "lm", col = "firebrick") +
  labs(title = "R =  180Ω", y = "I (mA)", x = "E (V)") +
  theme(plot.title = element_text(hjust = 0.5))

plot(g)