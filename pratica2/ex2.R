library(ggplot2)

x_axis <- c(1, 2, 4, 5, 6)
y_180 <- c(5.556, 11.11, 22.22, 27.77, 33.33)
y_80 <- c(12.5, 25, 50, 62.5, 75)
y_350 <- c(2.857, 5.714, 11.428, 14.286, 17.143)

dd <- data.frame(x_axis, y_180, y_80, y_350)
g <- ggplot(dd, aes(x_axis, col = resistência )) +
  geom_point(aes(y = y_180, col = "180Ω"), size = 3) +
  geom_point(aes(y = y_80, col = "80Ω"), size = 3) +
  geom_point(aes(y = y_350, col = "350Ω"), size = 3) +
  stat_smooth(method = "lm", aes(y = y_180, col = "180Ω")) +
  stat_smooth(method = "lm", aes(y = y_80, col = "80Ω")) +
  stat_smooth(method = "lm", aes(y = y_350, col = "350Ω")) +
  labs(title = "I(mA) x E(V) para diferentes resistores", y = "I (mA)", x = "E (V)") +
  theme(plot.title = element_text(hjust = 0.5))

plot(g)