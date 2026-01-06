# API-Based News Data Extraction and SQL Transformation

A data analytics project that extracts news data from a public API, processes it using Python, and transforms it using SQL to create an analytics-ready dataset in Google BigQuery.

---

## Overview
This project demonstrates an end-to-end data workflow where raw API data is converted into a structured format suitable for analysis and reporting.

---

## Problem Statement
API-based news data is typically semi-structured and not directly usable for analytics.  
The goal of this project is to extract, clean, and transform raw API data into a structured fact table using SQL.

---

## Dataset
- **Source:** Public News API (The Guardian)
- **Format:** JSON
- **Description:** Article-level news data including titles, publication dates, authors, sections, and content metrics.

---

## Tools and Technologies
- Python
- Google Colab
- Google BigQuery
- SQL (BigQuery SQL)
- REST API
- JSON

---

## Methods
1. Extracted data from the news API using Python (`notebooks/api_extraction.ipynb`).
2. Parsed nested JSON fields and cleaned raw data.
3. Loaded processed data into BigQuery.
4. Applied SQL transformations to build an analytics-ready fact table (`sql/bigquery_transformations.sql`).

---

## Key Insights
- Raw API data requires preprocessing before analysis.
- Nested author data must be flattened and aggregated.
- SQL transformations are essential to create clean analytical tables.
- Cloud warehouses simplify scalable analytics.

---

## Output
- A clean fact table containing article metadata, publication timestamps, authors, and text metrics.
- Data ready for reporting and dashboard creation.

---

## How to Run This Project?
1. Execute the API extraction and preprocessing notebook.
2. Load the cleaned data into BigQuery.
3. Apply SQL transformations using the provided scripts.
4. Analyze the final dataset using SQL queries.


---

## Result and Conclusion
This project demonstrates practical experience in API data extraction, data cleaning, and SQL-based transformation workflows commonly used in junior data analyst roles.
