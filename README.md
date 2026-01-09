# 🚕 Uber Supply–Demand Gap Analysis

## 📌 Project Overview

This project analyzes Uber ride request data to identify supply–demand gaps that impact ride fulfillment and customer satisfaction. Using **Excel, SQL, and Python**, the analysis explores when and where ride demand exceeds available driver supply and provides actionable business insights to improve operational efficiency.

---

## 🎯 Business Objective

To identify peak demand periods and pickup locations with high unmet demand, and to recommend strategies that help optimize driver allocation, reduce cancellations, and improve ride completion rates.

---

## 📂 Dataset Description

The dataset contains Uber ride request records with the following key attributes:

* Request ID
* Pickup Point (City / Airport)
* Request Timestamp
* Drop Timestamp
* Ride Status (Trip Completed / Cancelled / No Cars Available)
* Request Hour (derived)
* Unmet Demand Indicator (derived)

---

## 🛠️ Tools & Technologies Used

* **Excel** – Data cleaning and dashboard creation
* **SQL (PostgreSQL)** – Data storage, aggregation, and insight extraction
* **Python** – Exploratory Data Analysis (EDA)

  * Pandas
  * NumPy
  * Matplotlib
  * Seaborn

---

## 📊 Methodology

1. Data cleaning and preprocessing using Excel
2. Feature engineering (request hour, unmet demand, etc.)
3. SQL queries to analyze demand patterns and ride outcomes
4. Exploratory Data Analysis using Python following the **UBM framework**:

   * Univariate Analysis
   * Bivariate Analysis
   * Multivariate Analysis
5. Visualization of insights using charts and plots
6. Business insight generation and recommendations

---

## 🔍 Key Insights

* Ride demand peaks during morning and evening hours.
* Unmet demand increases significantly during peak hours.
* Airport pickups experience higher unmet demand due to no-car availability.
* City pickups show a higher number of ride cancellations.
* Time and pickup location are the most critical factors influencing ride fulfillment.

---

## 📈 Visualizations Included

* Ride Requests by Pickup Point
* Ride Status Distribution
* Hourly Ride Demand
* Hourly Unmet Demand Percentage
* Stacked Bar Charts (Pickup Point vs Status)
* Histograms, Pair Plots, and Correlation Heatmaps

---

## 💡 Business Recommendations

* Increase driver availability during peak demand hours.
* Introduce targeted incentives for airport pickups.
* Implement time-based dynamic driver allocation.
* Reduce city-side cancellations through better matching strategies.

---

## 📄 Project Structure

```
├── data/
│   └── uber_request_data.csv
├── sql/
│   └── sql_insights.sql
├── notebooks/
│   └── uber_supply_demand_eda.ipynb
├── reports/
│   └── insights_report.pdf
└── README.md
```

---

## ✅ Conclusion

This project demonstrates how combining Excel, SQL, and Python can effectively analyze real-world operational problems. The insights derived can help improve Uber’s service efficiency, reduce unmet demand, and enhance customer experience through data-driven decision-making.

---

## 📬 Contact

**Author:** Adithya Vinod
📧 adithyavinod0123@gmail.com

