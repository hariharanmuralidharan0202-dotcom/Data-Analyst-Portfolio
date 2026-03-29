# 📊 Financial Analysis Project (RTR-Focused)

##  Project Overview

This project focuses on performing **end-to-end financial analysis** using a real-world e-commerce dataset.
The objective is to simulate **Record-to-Report (RTR)** activities such as revenue analysis, cost tracking, profit calculation, and payment reconciliation.

The dataset represents a Brazilian e-commerce platform and includes orders, payments, customers, and product-level details.

---

##  Objectives

* Perform **data cleaning and transformation**
* Build a **financial dataset (master table)**
* Generate a **monthly Profit & Loss (P&L) statement**
* Conduct **payment reconciliation**
* Identify **financial exceptions and anomalies**
* Derive **business insights**

---

##Dataset Information

The dataset includes the following key tables:

* Orders data
* Order payments
* Order items (price & freight)
* Customer details

---

##  Tools & Technologies

* Python (Pandas, NumPy)
* Data Visualization (Matplotlib / Seaborn)
* Jupyter Notebook / Google Colab
* GitHub

---

## Project Workflow

### 1. Data Loading & Cleaning

* Imported multiple datasets
* Handled missing values
* Converted date columns into proper format

---

### 2. Data Merging

* Combined orders, payments, items, and customer data
* Created a **master dataset** for analysis

---

### 3. Financial Analysis

####  Revenue

* Derived from payment data

####  Cost

* Freight cost considered as primary cost

#### Profit

* Calculated as:
  Profit = Revenue - Cost

---

### 4. Monthly P&L Statement

* Aggregated data by month
* Generated:

  * Revenue
  * Cost
  * Profit

---

### 5. Payment Reconciliation (RTR Focus)

* Compared:

  * Expected order value (price + freight)
  * Actual payment received
* Identified mismatches:

  * Overpayments
  * Underpayments

---

### 6. Exception Analysis

* Cancelled orders
* Delivery delays
* High freight cost impact
* Revenue inconsistencies

---

## Key Insights

* Identified reconciliation mismatches indicating potential financial control gaps
* Certain orders showed **high freight-to-price ratio**, impacting profitability
* Majority of transactions were concentrated in specific regions
* Payment methods showed clear dominance, indicating dependency risk

---

## Visualizations

* Monthly revenue trend
* Profit trend
* Payment method distribution
* Revenue by region

---

##  Business Impact

This project demonstrates practical applications of:

* Financial reporting
* Month-end close activities
* Reconciliation processes
* Variance and exception analysis

---

##  Future Enhancements

* Build an interactive dashboard using Power BI
* Automate reconciliation checks
* Add forecasting models for revenue prediction

---
