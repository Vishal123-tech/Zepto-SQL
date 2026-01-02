# Zepto-SQL
# 📊 Zepto Grocery Data Analysis (SQL Project)

## 📌 Project Overview
This project performs **end-to-end SQL-based data exploration, cleaning, and analysis** on a Zepto grocery product dataset.  
The dataset includes **realistic product attributes** such as MRP, discounts, stock availability, weight, and category.

The objective is to extract **business insights** that can help in:
- Pricing strategy
- Inventory management
- Discount optimization
- Category-level performance analysis

This project is designed to showcase **Data Analyst–level SQL skills**.

---

## 🛠️ Tech Stack
- **Database:** PostgreSQL  
- **Language:** SQL  
- **Tools:** pgAdmin / psql / GitHub  

---

## 📂 Dataset Description
Each row represents a product SKU available on Zepto.

| Column | Description |
|------|-------------|
| sku_id | Unique product identifier |
| category | Product category |
| name | Product name |
| mrp | Maximum Retail Price (in paise) |
| discountPercent | Discount percentage |
| discountedSellingPrice | Selling price after discount (in paise) |
| availableQuantity | Available stock units |
| weightInGms | Weight of product in grams |
| outOfStock | Stock status (TRUE/FALSE) |
| quantity | Number of items per pack |

---

## 🔍 Data Exploration
- Total number of products
- Identification of NULL values
- Distinct product categories
- In-stock vs out-of-stock comparison
- Duplicate product name detection

---

## 🧹 Data Cleaning
- Removed products with **invalid pricing (MRP = 0)**
- Converted **paise to rupees** for price consistency
- Ensured numeric accuracy for analysis

---

## 📈 Analysis & Business Questions Answered
1. Top 10 best-value products by discount %
2. High-MRP products that are out of stock
3. Estimated revenue per category
4. Premium products with low discounts
5. Categories offering highest average discount
6. Best value products based on price per gram
7. Product segmentation by weight (Low / Medium / Bulk)
8. Total inventory weight per category

---

## 💡 Key Insights
- Some **high-price products remain out of stock**, indicating supply gaps
- **Bulk products give better value per gram**
- Categories with higher discounts contribute more to revenue
- Certain premium items maintain low discounts despite high MRP

---

## 🎯 Skills Demonstrated
✅ Data Cleaning  
✅ Aggregation & Grouping  
✅ CASE Statements  
✅ Business-Oriented SQL Queries  
✅ Analytical Thinking  

---

## 🚀 How to Run
```sql
1. Create the table using the provided schema
2. Insert dataset (CSV or manual load)
3. Execute queries step-by-step
4. Modify conditions to explore more insights
