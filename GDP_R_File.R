# Read the CSV file into R
data <- read.csv("/Users/reubenrinu/Downloads/GDP.csv")

# Filter the data for the desired years (2010-2019)
filtered_data <- data[data$DATE >= "2010-01-01" & data$DATE <= "2019-12-31", ]

# Create the bar graph with a green title
barplot(filtered_data$GDP, names.arg = filtered_data$DATE, xlab = "Year", 
        ylab = "GDP (in millions)", main = "U.S. GDP from 2010 to 2019", 
        col = "steelblue", border = "white")
