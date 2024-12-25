# 1. Persiapan Data ----
# Data tinggi badan (cm) dan berat badan (kg)
data <- data.frame(
  tinggi = c(150, 155, 160, 165, 170, 175, 180, 185, 190, 195), # Tinggi dalam cm
  berat = c(50, 53, 55, 60, 65, 70, 75, 78, 80, 85)             # Berat dalam kg
)

# Melihat sekilas data
print("Data Tinggi dan Berat Badan:")
print(data)

# 2. Uji Asumsi ----
# a. Uji normalitas
shapiro_tinggi <- shapiro.test(data$tinggi)
shapiro_berat <- shapiro.test(data$berat)

cat("\nShapiro-Wilk Test:\n")
cat("p-value untuk tinggi badan:", shapiro_tinggi$p.value, "\n")
cat("p-value untuk berat badan:", shapiro_berat$p.value, "\n")

# b. Uji linearitas dengan scatterplot
library(ggplot2)
ggplot(data, aes(x = tinggi, y = berat)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatterplot Tinggi vs Berat", x = "Tinggi (cm)", y = "Berat (kg)") +
  theme_minimal()

# c. Deteksi outlier dengan boxplot
boxplot(data$tinggi, main = "Boxplot Tinggi Badan", ylab = "Tinggi (cm)")
boxplot(data$berat, main = "Boxplot Berat Badan", ylab = "Berat (kg)")

# 3. Analisis Korelasi ----
cor_test <- cor.test(data$tinggi, data$berat, method = "pearson")

cat("\nHasil Uji Korelasi Pearson:\n")
cat("Koefisien korelasi:", cor_test$estimate, "\n")
cat("p-value:", cor_test$p.value, "\n")

# 4. Visualisasi ----
ggplot(data, aes(x = tinggi, y = berat)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(
    title = "Hubungan Tinggi dan Berat Badan",
    subtitle = paste("Pearson's r:", round(cor_test$estimate, 2)),
    x = "Tinggi Badan (cm)",
    y = "Berat Badan (kg)"
  ) +
  theme_minimal()

# 5. Interpretasi ----
if (cor_test$p.value < 0.05) {
  cat("\nInterpretasi: Terdapat hubungan yang signifikan antara tinggi dan berat badan (p < 0.05).\n")
} else {
  cat("\nInterpretasi: Tidak terdapat hubungan yang signifikan antara tinggi dan berat badan (p ≥ 0.05).\n")
}

