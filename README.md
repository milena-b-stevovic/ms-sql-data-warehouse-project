# 💻⚙️ SQL Data Warehouse Project

## Welcome 👋  

This project demonstrates my approach to **end-to-end data solutions**—not just analysis, but building the reliable foundations that make analysis possible. As a Senior Statistician with 17 years in official statistics, I understand that **trustworthy insights require trustworthy data infrastructure**.

Here, I showcase how to build scalable **ETL pipelines and analytical data models** that transform raw operational data into actionable business intelligence. The project mirrors real-world scenarios where clean, reliable data forms the foundation for decision-making in sales, inventory, and customer analysis.

> **⚠️ Note:** This project focuses on **data warehousing and ETL**. Business analytics, dashboards, and statistical insights will be developed in a separate companion project.

## My Background & Transition 👤
As a **Senior Statistician** at the Serbian National Statistical Institute, I collaborated daily with data engineers and software developers to design and implement ETL processes across domains such as agricultural statistics, national accounts, and time series forecasting to ensure data integrity and relevance. This experience strengthened my ability to bridge **analytics and engineering**, positioning me as a data analyst who understands the full data lifecycle. I am now transitioning my skills to the business sector, aiming to act as the crucial link between data infrastructure and strategic business insight as a Data Analyst.

</br>
# 📋 Project Overview

## 🤔💭 Problem statement
Companies often have sales data spread across modern CRMs such as Salesforce, aging inventory systems, and department-specific spreadsheets, making it impossible to get a unified view of business performance without weeks of manual work. At the National Statistical Institute, I solved similar challenges with Census mainframes, Access databases, and macroeconomic models with 50+ linked Excel files. In this project, I will apply this **precision at scale** to business data.

## 🎯 Project Objective
Build a modern SQL Server data warehouse that consolidates Apple sales data into **single source of truth**, ready for analytical reporting and BI.  

**Key Deliverables:**
- Import data from diverse sources (in this case, CSV and PDF).
- Apply cleansing routines to address data quality issues.
- Integrate sources into a unified, user‑friendly data model.
- Scope the model to the most recent dataset (2020 onwards) for focused insights.
- Deliver clear ETL process documentation to support analytics and stakeholder use.

This project focuses on the **data engineering foundation**—building a production-ready SQL Server data warehouse that consolidates and prepares Apple sales data for analytics. 
</br>
### 🏗️ Three-Layer Data Architecture

| Layer | Purpose | Key Processes | Output |
|-------|---------|---------------|--------|
| **📥 Bronze** | Raw data preservation | • CSV/PDF ingestion<br>• Audit trail maintenance<br>• Source format preservation | Original source tables |
| **🧹 Silver** | Data quality & standardization | • Date format standardization<br>• Referential integrity validation<br>• Missing value handling | Cleaned, consistent tables |
| **📊 Gold** | Analytics optimization | • Star schema implementation<br>• Strategic indexing<br>• Business logic integration | Query-optimized analytics schema |

**Government Parallel:** Just as my team at the National Statistical Institute provided **definitive economic data** for national policies, this project provides **definitive sales data** for business strategy.

## 🔬 Key Technical Challenges Solved
- Heterogeneous Date Formats → Standardized 16-06-2023, 5/7/2021, 1/30/2024 to ISO format
- Referential Integrity → Implemented validation before dimension loading
- Performance at Scale → Strategic indexing on date and foreign key columns
- Data Lineage → Maintained audit trails from bronze to gold layers

## 📁 Repository Structure
ms-sql-data-warehouse-project/
├── scripts/ # SQL implementation
├── python/ # ETL automation
├── docs/ # Documentation
└── README.md # This file

## 🔧 Tech Stack
[![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/sql-server)
[![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)](https://python.org)
[![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com)

- **Database Engine:** Microsoft SQL Server Express
- **Database Management & Development:** SQL Server Management Studio (SSMS)
- **ETL Automation & Scripting:** Python
- **Architecture & Design:** Draw.io
- **Version Control & Collaboration:** GitHub
<br/>

**🔜 Coming Soon:** *Apple Sales Analytics Dashboard* - Business intelligence, interactive visualizations, and strategic insights built on this data foundation.

--- 

📞 Let's Connect & Discuss Opportunities:
<p align="center"> <a href="https://www.linkedin.com/in/milena-b-stevovic"> <img src="https://img.shields.io/badge/VIEW_MY_LINKEDIN-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /> </a> <a href="https://github.com/milena-b-stevovic"> <img src="https://img.shields.io/badge/EXPLORE_MY_PROJECTS-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" /> </a> <a href="mailto:drstevovic@gmail.com"> <img src="https://img.shields.io/badge/EMAIL_ME-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" /> </a> </p><p align="center"> <strong>💼 LinkedIn:</strong> <a href="https://www.linkedin.com/in/milena-b-stevovic">linkedin.com/in/milena-b-stevovic</a><br> <strong>🐙 GitHub:</strong> <a href="https://github.com/milena-b-stevovic">github.com/milena-b-stevovic</a><br> <strong>📧 Email:</strong> <a href="mailto:drstevovic@gmail.com">drstevovic@gmail.com</a> </p><p align="center"> <em>I typically respond within 24 hours to discuss:<br> • Full-time remote opportunities • Freelance data projects • Technical collaboration • Data strategy discussions</em> </p>

