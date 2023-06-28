# Read the CSV file into R
data <- read.csv("/Users/reubenrinu/Downloads/FPCPITOTLZGUSA.csv")

# Convert the "DATE" column to Date format
data$DATE <- as.Date(data$DATE)

# Filter the data for the desired years (2010-2019)
filtered_data <- data[data$DATE >= as.Date("2010-01-01") & data$DATE <= as.Date("2019-12-31"), ]

# Create the line graph with colorful lines
plot(filtered_data$DATE, filtered_data$FPCPITOTLZGUSA, type = "l",
     xlab = "Year", ylab = "Inflation %",
     main = "U.S. Inflation Percentage (2010-2019)",
     col = rainbow(length(filtered_data$FPCPITOTLZGUSA)), lwd = 2)
