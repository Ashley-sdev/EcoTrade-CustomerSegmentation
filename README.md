# EcoTrade-CustomerSegmentation in R

🎯 The Goal: To segment customers from EcoTrade’s demographic dataset to understand who buys sustainable products and support marketing decisions.

🛠 The Tools: R (dplyr, ggplot2, readr), CSV Data, Data Visualization

📂 Dataset

Used the `Customer_Demographics.csv` file from the EcoTrade project assigned, which contains:
- CustomerID
- Age
- Gender
- Income
- Region

📊 Key Questions Answered
- Which age group has the highest average income?
- Which regions have the most customers?
- How should we segment customers for targeted marketing?

📈 Visualizations

<img src="plots/income_by_age_group.png", income_plot, width = "6", height = "4"/>
<img src="plots//region_distribution.png", region_plot, width = "6", height = "4"/>

🧠 Summary of Insights

- Customers aged 64+ earn the highest incomes.
- Region A has the largest share of customers.
- Marketers should target high-income older customers with premium sustainable products.

📜 What’s Inside

| File | Description |
|------|-------------|
| `EcoTrade_Segmentation.R` | R script with all steps and code |
| `data/Customer_Demographics.csv` | Dataset used for analysis |
| `plots/` | Exported PNG graphs |
