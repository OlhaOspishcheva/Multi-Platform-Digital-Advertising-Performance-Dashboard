# Multi-Platform Digital Advertising Performance Dashboard

## 📊 Overview

This project presents a unified analytical dashboard built to evaluate the performance of digital advertising campaigns across Facebook Ads and Google Ads.  The dashboard provides a centralized view of key marketing KPIs, compares platforms and campaigns, and helps identify opportunities for budget optimization, performance improvement, and strategic scaling.

## 🎯 Business Task

Marketing teams needed a single source of truth to answer critical questions:
Which campaigns and platforms generate the highest ROMI (Return on Marketing Investment)?
How does performance vary across time, campaigns, and media sources?
Where can cost efficiency and lead conversion be improved?
The goal was to consolidate advertising data, calculate meaningful performance metrics, and visualize insights for decision-makers.

## 📁 Data & Sources

### Data was retrieved from PostgreSQL, using two daily-level advertising datasets:

facebook_ads_basic_daily  
google_ads_basic_daily

Both tables were enriched with metadata (campaign names, ad set names) through related joins.

### Key Columns: 

ad_date, campaign_name, adset_name, spend, impressions, reach, clicks, leads, value, url_parameters

### Data Preparation Steps:

Unified Facebook and Google data using UNION ALL  
Applied filters to ensure data completeness (non-NULL ad_date, campaign_name, adset_name)  
Applied LEFT JOINs to enrich missing metadata  
Created a consistent naming structure to align metrics across platforms

## 🛠 Tools & Methods

### SQL (PostgreSQL)

Combined platform datasets into a unified structure
Ensured data quality and consistency
Prepared clean input datasets for visualization

### Looker Studio (Google Data Studio)

Created calculated fields for key marketing KPIs:

CTR — Click-Through Rate  
CPC — Cost Per Click  
CPM — Cost Per Mille  
Lead Conversion Rate  
ROMI — Return on Marketing Investment

Built the following visualization components:
Time-series charts
Bar charts
Bubble charts
Funnel visualizations
Cross-platform comparisons

## 📊 Analytical Approach
1. Data Preparation
Merged both platforms into one unified dataset to simplify analysis and ensure consistent metric calculations across campaigns.

2. Metric Calculation
Metrics were calculated directly within Looker Studio to keep SQL lean and the data source flexible.

3. Dashboard Design
Focused on clarity and usability:

Filters for date, media source, and campaign name
Key KPIs displayed at the top
Bubble charts to highlight ROMI–Spend–Leads relationships
Funnel visualization for Facebook & Google to understand drop-offs
Platform comparisons for spend, value, CPC, CPM, and conversions

## ⚠️ Challenges & Solutions

### Challenge 1 — Incomplete metadata
Campaign and adset names were missing in some entries.

### Solution:
Applied LEFT JOINs to retrieve names from lookup tables and filtered out remaining incomplete rows.

### Challenge 2 — Misaligned metric logic
Each platform used slightly different naming and structure.

### Solution:
Created a unified naming schema and consistent SQL output format for smooth metric calculation in Looker Studio.

## 📈 Results & Impact

The dashboard allowed stakeholders to:

Quickly identify underperforming campaigns
Compare platforms based on ROMI, CPC, CPM, and conversions
Detect campaigns with high spend but low return
Improve decisions on budget allocation and scaling strategies

## 🔍 Key Findings
1. Strategy & Scaling

Two distinct periods of high advertising investment generated significant value and leads — confirming the strong correlation between spend volume and returns.

2. Platform Effectiveness

Google appears more efficient at driving top-of-funnel traffic, while both platforms combined contribute to an effective overall ROMI.

3. Key Growth Drivers

The "Expansion" and "Lookalike" campaigns delivered the highest returns, emphasizing the value of audience expansion and lookalike modeling.

## 💡 Key Insights
ROMI Optimization

Total ROMI reached 22%, but fluctuated heavily — with a sharp decline in July 2022, coinciding with increased CPC.
This period requires deeper investigation to prevent similar issues.

Conversion Challenge

Lead conversion rate remained generally low.
Many campaigns generated clicks effectively but failed to convert them into leads — indicating bottlenecks in the sales funnel rather than in advertising.

Audience Value

The Lookalike audience segment delivered the strongest ROI, proving that customer-based audience modeling is a key strategy for scaling profitably.

## 📌 Dashboard Link
https://lookerstudio.google.com/reporting/023e4695-49ee-4c40-ac45-a208f6c7a7cb

## 📂 Repository Structure

/screenshots       → Dashboard images  
/sql               → SQL queries (unification, metrics, cleaning)  
/docs              → Metric definitions, data dictionary  
/data_sample       → Anonymized example dataset  
README.md          → Project documentation  

## 📬 Contact
www.linkedin.com/in/olha-ospishcheva  
ospishevafarm86@gmail.com
