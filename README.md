# Kimia Farma Retail Performance Analysis (2020–2023)

## Overview
This project analyzes retail performance data from Kimia Farma over a four-year period (2020–2023). The objective is to evaluate revenue patterns, geographic distribution, and product-level performance to generate data-driven insights that support strategic decision-making.

🔗 **Live Dashboard:**  
https://datastudio.google.com/reporting/8f287e12-db86-4a77-91e1-42eb02b11df6

---

## Dataset
**Source:** Kaggle — *Kimia Farma Performance Analysis 2020–2023*

The dataset consists of four primary tables:
- `transactions`
- `branches`
- `products`
- `inventory`

---

## Tools & Technology
| Tool | Role |
|------|------|
| Python (Pandas) | Data cleaning and preprocessing |
| BigQuery | Data warehousing and transformation |
| SQL | Data modeling and analytical queries |
| Looker Studio | Data visualization |

---

## Data Pipeline

### 1. Data Preprocessing (Python)
- Removed duplicates and handled missing values  
- Standardized column naming conventions  
- Prepared datasets for BigQuery upload  

### 2. Data Modeling (BigQuery & SQL)
- Joined all tables into a unified analytical view  
- Created calculated fields (net sales, transaction counts)  

> **Note:**  
Gross profit is excluded. The dataset’s profit assumptions are not officially documented, so analysis is limited to verifiable metrics: `nett_sales`, `discount_percentage`, `rating`, and transaction volume.

---

## Dashboard
The dashboard includes:
- KPI summary (transactions, net sales, rating, branches)
- Monthly sales trends (2020–2023)
- Top cities and products by sales
- Product category breakdown
- Discount and rating analysis  

All visuals are filterable by branch category, province, year, and quarter.

---

## Key Findings

### 1. High Scale, Moderate Efficiency
672,458 transactions across 1,725 branches generated Rp321.17B in net sales.  
However, average sales per branch (~Rp186M over four years) indicate reliance on scale rather than strong per-branch performance.

### 2. Stable Revenue, Limited Growth
Monthly sales fluctuate between ~Rp6–7B with no clear upward trend, indicating stability but weak growth.

### 3. Geographic Concentration
Revenue is heavily concentrated in West Java, with cities like Subang, Garut, and Purwakarta dominating performance. Other regions are underrepresented.

### 4. Product Dependency
Sales are concentrated in a few categories:
- R06 (Antihistamines)
- M01AE (Anti-inflammatory/NSAIDs)
This indicates reliance on specific demand segments.

### 5. Minimal Discount Strategy
Average discount is only 0.07%, suggesting pricing is not actively used to drive demand.

### 6. Moderate Customer Satisfaction
Average rating of 4.00/5.00 indicates consistent but not exceptional customer experience.

---

## Recommendations

### 1. Drive Growth
Implement campaigns, bundling, and seasonal promotions to move beyond flat revenue trends.

### 2. Improve Branch Productivity
Identify underperforming branches and optimize:
- inventory mix  
- local marketing  
- operations  

### 3. Expand Regionally
Replicate high-performing city strategies in underdeveloped regions outside Java.

### 4. Optimize Product Strategy
Prioritize high-performing categories while improving low-performing products via bundling or repositioning.

### 5. Test Pricing Strategies
Introduce controlled discounts and measure impact on sales volume.

### 6. Improve Customer Experience
Enhance service quality and product availability to increase satisfaction and retention.

---

## Repository Structure
``
Kimia-Farma-Performance-Analysis/
│
├── README.md
├── notebook/
│ └── kimia_farma_cleaning.ipynb
├── sql/
│ ├── Combined View.sql
│ ├── EDA for KF.sql
└── dashboard/
└── dashboard_preview.png
``
