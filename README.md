# Olist_project
Data analytics and operational BI project using PostgreSQL, Python, BigQuery, and Power BI based on the Brazilian Olist public dataset.  The objective of this project is to simulate a real corporate analytics environment by implementing relational modeling, ETL pipelines, SQL analysis, data automation, and KPI dashboards.

## Project Architecture

CSV Dataset
    ↓
PostgreSQL
    ↓
Python ETL
    ↓
BigQuery
    ↓
Power BI Dashboard

## Technologies Used

- PostgreSQL
- pgAdmin
- SQL
- Python
- Pandas
- BigQuery
- Power BI
- Google Cloud Platform (GCP)

  ## Relational Structure

### customers
- customer_id
- customer_unique_id
- customer_city
- customer_state

### orders
- order_id
- customer_id
- order_status
- order_purchase_timestamp

### products
- product_id
- product_category_name

### payments
- order_id
- payment_type
- payment_value

## Data Import Process

The CSV files were imported into PostgreSQL using pgAdmin.

Steps:
1. Database creation (`olist_project`)
2. Manual table creation
3. CSV import using Import/Export tool
4. Data validation using SQL queries

## ETL Process

Data transformation and cleaning were performed using Pandas.

Main ETL operations:
- Null value treatment
- Duplicate removal
- Column standardization
- Datetime conversion
- Data consolidation

## Dashboard

The Power BI dashboard was developed to monitor operational and commercial KPIs.

Main features:
- Sales overview
- Order performance
- Delivery analysis
- Geographic analysis
- Customer behavior insights

## Insights Section

Coming soon...


## Future Improvements

Coming soon...
