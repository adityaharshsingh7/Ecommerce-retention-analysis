# Ecommerce-retention-analysis
This project analyzes customer retention patterns for the Olist Brazilian E-commerce dataset.
It includes cohort analysis, RFM segmentation, churn labeling, and a simple machine-learning model to predict churn.

#Tools Used
Python (Pandas, NumPy)
Plotly, Seaborn, Matplotlib
XGBoost
SHAP (model explainability)
Google Colab (development)

#Project Workflow
1. Data Preparation
-Loaded 9 Olist CSV files from Kaggle
-Cleaned orders data & removed undelivered orders
-Merged with customer table to get customer_unique_id

2. Cohort Analysis
-Created monthly cohorts
-Computed retention rates
-Visualized using a heatmap

3. RFM Analysis
-Calculated for every unique customer:
-Recency – Days since last order
-Frequency – Number of orders
-Monetary – Total spend
These features were used for churn prediction.

4. Churn Labeling
A customer is marked as churned if they have not placed an order in the last 90 days.

5. Churn Prediction Model
-Used XGBoost Classifier
-Train/test split
-Evaluated using classification report
-Explained model using SHAP values

This answers:
Which features drive churn?
