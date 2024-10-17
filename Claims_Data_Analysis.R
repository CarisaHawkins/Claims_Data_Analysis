#load libraries

library(dplyr)
library(ggplot2)

#load dataset

claims_data <- read.csv("C:/Users/caris/OneDrive/Desktop/Data_Science_Projects/Medical Cost Personal/claims_data_analysis/insurance.csv")

#Reviewing some of the data; to see the structure
head(claims_data)

## Initial Exploration

summary(claims_data)

#converting categorical data

claims_data$sex <- factor(claims_data$sex, levels = c("male", "female"))
claims_data$smoker <- factor(claims_data$smoker, levels = c("no", "yes"))
claims_data$region <- factor(claims_data$region, levels = c("southwest", "southeast", "northwest", "northeast"))

summary(claims_data)

#analyze and visualize claims based on categories
#smoker

avg_charge_smoker <- claims_data |>
  group_by(smoker) |>
  summarise(avg_charge = mean(charges, na.rm = TRUE))
avg_charge_smoker

#Smokers have a higher claim cost compared to nonsmokers
#Which could imply that smoking may lead to higher health-related expenses
#impacting insurance premiums and risk assessments

#visualization: Smoker

ggplot(avg_charge_smoker, aes(x = smoker, y = avg_charge, fill = smoker)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Average Claim Charges by Smoking Status", x = "Smoker", y = "Average Charges") +
  theme_minimal()

avg_charges_sex <- claims_data |>
  group_by(sex) |>
  summarize(avg_charges = mean(charges, na.rm = TRUE))
avg_charge_sex

#Males have an average claim charge of roughly $13957
#Females have an average claim charge of roughly $12570

#visualization: Sex

ggplot(avg_charges_sex, aes(x = sex, y = avg_charges, fill = sex)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Average Claim Charges by Sex", x = "Sex", y = "Average Charges") +
  theme_minimal()

ggsave("avg_charge_sex.png")

avg_charges_region <- claims_data |>
  group_by(region) |>
  summarize(avg_charges = mean(charges, na.rm = TRUE))
avg_charges_region

#Southeast has a higher average claim charges compared to other regions
#May suggest that people in that region face higher health-related costs
#Or risk factors

#Southwest: $12,347
#Southeast: $14,735
#Northwest: $12,418
#Northeast: $13,406

visualization: Region

ggplot(avg_charges_region, aes(x = region, y = avg_charges, fill = region)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Average Claim Charges by Region", x = "Region", y = "Average Charges") +
  theme_minimal()

ggsave("region.png")

visualization: BMI

#Scatter Plot of BMI vs. Charges

ggplot(claims_data, aes(x = bmi, y = charges)) +
  geom_point(color = "blue", alpha = 0.5) +
  labs(title = "Scatter Plot of BMI vs. Claim Charges", x = "BMI", y = "Charges") +
  theme_minimal()

#there seems to be a general trend where higher BMI values correspond to higher 
#claim charges, particularly with more frequent high charges as BMI increases above 30.

#Scatter Plot of BMI vs. Charges with Trend Line

ggplot(claims_data, aes(x = bmi, y = charges)) +
  geom_point(color = "blue", alpha = 0.5) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "BMI vs. Claim Charges with Trend Line", x = "BMI", y = "Charges") +
  theme_minimal()

ggsave("bmi_vs_charges.png")

cor_bmi_charges <- cor(claims_data$bmi, claims_data$charges, use = "complete.obs")
cor_bmi_charges

