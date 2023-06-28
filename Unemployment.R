# Read the CSV file into R
data <- read.csv("/Users/reubenrinu/Downloads/Unemployment.csv")

# Select the columns of interest (Year and Unemployment Rate)
plot_data <- data[data$Year >= 2010, c("Year", "Unemployment.Rate")]

# Set the plot title and axis labels with blue color
plot(plot_data$Year, plot_data$Unemployment.Rate, type = "o", pch = 16, col = "#FF9999",
     xlab = expression("\nYear"), ylab = expression("\nUnemployment Rate"),
     main = expression("\nUnemployment Rate Over Time"), col.main = "blue", col.lab = "blue")
