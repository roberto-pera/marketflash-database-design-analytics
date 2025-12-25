# MarketFlash – Marketing Campaign Analytics  
*Relational Database Design (SQL) & Tableau Analytics*

**End-to-end analytics case study combining database modeling and business intelligence**

---

## Overview

MarketFlash is a fictional marketing agency used as a realistic case study to practice **relational database design** and **analytics-driven decision support**.

The project intentionally consists of **two complementary parts**:

1. **Database Design & SQL Implementation**  
   A self-designed relational database created for learning and modeling purposes.

2. **Analytics & Dashboarding**  
   An executive performance analysis based on a **separate, pre-provided campaign dataset** supplied as part of the project brief.

Together, these components simulate a real-world analytics workflow:  
from structured data modeling to business insights and recommendations.

---

## Business Context

In 2023, MarketFlash managed:

- **1,000 marketing campaigns**
- **78 clients**
- Multiple digital platforms (e.g. YouTube, Instagram, Facebook, TikTok, Email)

The original business data was delivered as a **single worksheet**, containing campaign details, client information, costs, and performance metrics.

This setup was no longer sufficient for a growing business that needed:
- scalable data structures
- reliable performance tracking
- clear executive-level reporting

---

## Project Scope

This project addresses two distinct but related objectives defined in the assignment:

### 1. Database Design & SQL (Modeling Focus)

- Translate business requirements into a relational data model  
- Design a conceptual and functional ER diagram (Crow’s Foot)  
- Implement the database schema in SQL  
- Define keys, constraints, and relationships  
- Validate the schema using test and integrity queries  

⚠️ *The database and sample data were created independently for learning purposes and are not the direct source of the Tableau analysis.*

---

### 2. Analytics & Dashboarding (Business Insight Focus)

- Clean and analyze the **provided campaign dataset**  
- Calculate key performance indicators (KPIs)  
- Design an executive-level Tableau dashboard  
- Generate insights and recommendations for decision-makers  

This separation reflects a common real-world scenario where:
- data models are designed independently
- analytics teams work with existing operational datasets

---

## Data Model (Database Design)

### Functional ER Diagram

The database was designed as a **fully normalized relational schema**, reflecting real-world business rules discussed in the project brief.

**Core entities include:**
- Campaigns
- Clients
- Employees
- Platforms
- Influencers
- Contents
- Advertisements
- Payments
- Metrics

**Relationship highlights:**
- One client → many campaigns  
- One campaign → one and only one client  
- One campaign → one manager (employee)  
- One employee → may supervise multiple employees  
- One campaign → one set of metrics  
- One campaign → multiple platforms and influencers  
- One campaign → multiple contents, advertisements, and payments  

📌 *Visual placeholder:*  
**er_diagram.png** – Functional ER diagram (Crow’s Foot)

---

## SQL Database Implementation

The database schema was implemented using SQL with a focus on:

- Primary and foreign keys  
- Referential integrity  
- Appropriate datatypes and constraints  
- Clear analytical join paths  

The SQL layer includes:
- table creation scripts  
- sample data inserts  
- integrity and validation queries  
- KPI-oriented analytical queries (e.g. CPC, cost per conversion)

📌 *Visual placeholder:*  
**database_setup.png** – Database schema and tables (Beekeeper Studio)

---

## Test & Validation Queries

To verify the functionality of the database design, a small set of SQL queries was used to test
table relationships, joins, and calculation logic.

The included queries focus on:

- **Average Cost per Click (CPC)**  
- **Average Cost per Conversion**  
- Campaign-to-client relationship checks (`campaign_client_check.sql`)

These queries primarily serve as **functional and integrity tests**, ensuring that the data model
supports correct joins and basic KPI calculations rather than full analytical exploration.

---

## Tableau Dashboard (Analytics)

### Structure & Logic

The Tableau dashboard is based on the **provided campaign dataset** from the assignment and was designed for **non-technical stakeholders**.

It enables:
- Executive-level performance comparison  
- Cost-efficiency analysis  
- Channel performance overview  
- Monthly trend monitoring  
- Identification of under- and over-performing executives  

📊 **Live Dashboard (Tableau Public):**  
[Executive Performance Analysis – MarketFlash](https://public.tableau.com/app/profile/roberto.pera/viz/Project_MarketFlash_ExecutivePerformanceAnalysis/ExecutivesPerformance)

📌 *Visual placeholder:*  
**dashboard_screenshot.png** – Executive overview dashboard

---

## Key Insights

Analysis of the 2023 campaign data revealed that:

- High conversion rates are achievable even with relatively small budgets  
- A limited number of executives consistently outperform others  
- Some high-budget campaigns show weak cost efficiency  
- Performance varies significantly by channel and execution strategy  

---

## Recommendations

1. **Scale best practices**  
   Replicate strategies used by high-performing executives across teams.

2. **Focus budget allocation**  
   Concentrate spend on consistently efficient managers and channels.

3. **Targeted coaching**  
   Support executives with large budgets but low efficiency through coaching or campaign reviews.

4. **Dynamic performance monitoring**  
   Use the dashboard for monthly reviews and early corrective actions.

---

## Repository Structure

The repository is organized to reflect the end-to-end analytics workflow, from raw data to database design and business insights:

---

## Tools & Technologies
- SQL – relational database design & analytics

- Beekeeper Studio – database inspection and validation

- Tableau – dashboarding and visualization

- Data Modeling – Crow’s Foot ER diagrams

---

## Role & Disclaimer
This project was designed and implemented independently as a simulated client engagement for learning and portfolio purposes.
MarketFlash and all data used are fictional.
