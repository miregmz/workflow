library(tidyverse)

print(sum(1:10))

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1) +
  scale_color_viridis_d(option = "plasma", end = 0.9) +
  labs(
    title = "The price of a diamond",
    subtitle = "Larger diamonds tend to cost more; color shows cut quality",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    plot.subtitle = element_text(color = "grey40"),
    legend.position = "bottom"
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
