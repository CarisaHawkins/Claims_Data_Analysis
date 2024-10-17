Project Overview
This project is a beginner-friendly analysis of health insurance claims data using R. The goal is to explore the data to identify key patterns in claim costs based on factors such as smoking status, sex, region, and BMI. The analysis also investigates the relationship between BMI and claim charges to understand potential cost drivers in health insurance.

Dataset
The data used in this project is based on the "Medical Cost Personal Dataset" available on Kaggle.

Columns in the Dataset
age: Age of the insured.
sex: Gender of the insured (male/female).
bmi: Body Mass Index, a measure of body fat based on height and weight.
children: Number of dependents covered by the insurance.
smoker: Smoking status of the insured (yes/no).
region: Residential region in the U.S. (southwest, southeast, northwest, northeast).
charges: Medical insurance charge for the insured.

Project Steps
1. Data Preparation
Loaded the dataset into R.
Converted categorical variables (sex, smoker, region) to factors for easier analysis and visualization.
2. Exploratory Data Analysis
Summarized key statistics for columns such as age, bmi, children, and charges.
Analyzed average claim costs based on:
Smoking status: Found that smokers tend to have significantly higher charges.
Sex: Observed that males have slightly higher average charges than females.
Region: Noted that the Southeast region has higher average charges compared to other regions.
3. Visualizations
Created a histogram to view the distribution of claim charges.
Visualized average charges by smoking status, sex, and region using bar plots.
Created a scatter plot of BMI vs. charges to observe any relationship, adding a trend line to highlight the correlation.
4. Correlation Analysis
Calculated the correlation coefficient between BMI and charges, finding a positive correlation that suggests higher BMIs may lead to higher claim costs.
Key Findings:
Smokers have notably higher average claim charges than non-smokers.
There is a positive correlation between BMI and charges, indicating that individuals with higher BMI tend to incur higher medical costs.
The Southeast region has the highest average charges among the four regions.
Conclusion:
This analysis provides insights into factors that may influence health insurance costs, such as smoking and BMI. The findings can help health insurers understand

potential risk factors and assist in pricing or risk assessment.

Visualizations:

visualization: Smoker
![image](https://github.com/user-attachments/assets/52acce60-15b8-4493-b6d5-7657f8d8522d)

visualization: Sex

![image](https://github.com/user-attachments/assets/055a04b1-4caa-487d-a2c4-1fd4c0e05f1c)

visualization: Region

![image](https://github.com/user-attachments/assets/b313bb79-9d62-4b04-abfc-2d27fc63c35a)





