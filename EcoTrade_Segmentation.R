#install libraries
install.packages("tidyverse")
library(tidyverse)

#load packages
library(tidyverse)

#load data
customers <- read_csv("C:/Users/muhle/Documents/repos/EcoTrade-CustomerSegmentation-R/data/Customer_Demographics.csv")

#clean data
customers_clean <- customers %>%
  filter(!is.na(Age), !is.na(Income)) %>%
  mutate(AgeGroup = case_when(
    Age < 25 ~ "18-24",
    Age >= 25 & Age < 35 ~ "25-34",
    Age >= 35 & Age < 50 ~ "35-49",
    Age >= 50 & Age < 65 ~ "50-64",
    Age >= 65 ~ "65+"
  ))
print (customers_clean)

#average income by Age group
income_plot <- customers_clean %>%
  group_by(AgeGroup) %>%
  summarise(AverageIncome = mean(Income)) %>%
  ggplot(aes(x = AgeGroup, y = AverageIncome, fill = AgeGroup)) +
  geom_col() +
  labs(title = "Average Income by Age Group", y = "Average Income", x = "Age Group") +
  theme_minimal()
print(income_plot)

#save income_plot
ggsave("C:/Users/muhle/Documents/repos/EcoTrade-CustomerSegmentation-R/plots/income_by_age_group.png", income_plot, width = 6, height =4)

#customer distribution by region
region_plot <- customers_clean %>%
  count(Region) %>%
  ggplot(aes(x = Region, y = n, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Number of Customers by Region", y = "Customer Count", x = "Region") +
  theme_light()
print(region_plot)

#save region_plot
ggsave("C:/Users/muhle/Documents/repos/EcoTrade-CustomerSegmentation-R/plots/region_distribution.png", region_plot, width = 6, height = 4)

#summary
print("Top 3 Income Groups by Age:")
print(customers_clean %>% group_by(AgeGroup)%>%summarise(AverageIncome = mean(Income)) %>% arrange(desc(AverageIncome)))

print("Customer Count by Region")
print(customers_clean %>% count(Region))