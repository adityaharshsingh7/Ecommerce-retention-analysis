Ecommerce Customer Retention Analysis

This repository contains a complete analysis of customer retention patterns using the Olist Brazilian E-commerce dataset. The project includes cohort analysis, RFM segmentation, churn labeling, and a machine learning model to predict customer churn.

Project Overview

This project aims to understand customer purchasing behavior and identify factors influencing churn. Using customer and order-level data from the Olist dataset, the workflow includes data preparation, retention analysis, segmentation, and churn prediction using machine learning.

Tools and Technologies

Python (Pandas, NumPy)

Visualization: Matplotlib, Seaborn, Plotly

Machine Learning: XGBoost

Model Explainability: SHAP

Environment: Google Colab

Project Workflow
1. Data Preparation

Loaded 9 CSV files from the Olist Kaggle dataset.

Cleaned orders data and removed undelivered orders.

Merged orders with customer information to retrieve customer_unique_id.

2. Cohort Analysis

Created monthly cohorts based on customer first purchase month.

Computed retention rates for each cohort.

Visualized retention using a cohort heatmap.

3. RFM Analysis

Calculated RFM (Recency, Frequency, Monetary) features for each unique customer.

Metric	Description
Recency	Days since the customer's last purchase
Frequency	Number of orders made
Monetary	Total spend by the customer

These features were used as inputs for the churn prediction model.

4. Churn Labeling

A customer is labeled as churned if they have not placed an order in the last 90 days.

Churn labels:

1: Churned

0: Active

5. Churn Prediction Model

Implemented an XGBoost Classifier for churn prediction.

Performed train-test split.

Evaluated model performance using a classification report.

Used SHAP values to interpret feature importance and understand what drives churn.

Key question answered:

Which customer behavior features increase churn probability?
