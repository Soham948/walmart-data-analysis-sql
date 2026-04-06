# walmart-data-analysis-sql
SQL-based data analysis project on Walmart sales data to extract business insights such as customer behavior, sales trends, payment methods, and revenue performance.


🚀 Project Steps
1️⃣ Environment Setup
Tools Used: Visual Studio Code, Python, MySQL, PostgreSQL
Created a structured workspace for efficient development
2️⃣ Kaggle API Setup
Downloaded API token from Kaggle
Configured local environment using kaggle.json
Downloaded dataset using CLI
3️⃣ Dataset Acquisition
Dataset: Walmart Sales Dataset (from Kaggle)
Stored data in data/ folder
4️⃣ Install Libraries & Load Data
Bash
pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
Loaded dataset into Pandas DataFrame
5️⃣ Data Exploration
Used:
.info()
.describe()
.head()
Checked:
Data types
Missing values
Overall structure
6️⃣ Data Cleaning
Removed duplicates
Handled missing values
Fixed data types (dates, numeric fields)
Cleaned currency formats
Validated cleaned dataset
7️⃣ Feature Engineering
Created new column:
Total Amount = unit_price × quantity
Improved dataset for SQL analysis
8️⃣ Database Integration
Connected to:
MySQL
PostgreSQL
Used SQLAlchemy to:
Create tables
Load cleaned data
9️⃣ SQL Analysis & Business Problems
Performed advanced SQL queries to solve business problems:
Revenue trends across branches
Best-selling product categories
Sales by time, city, and payment method
Peak sales periods
Profit margin analysis
🔟 Project Publishing
Uploaded project to GitHub
Included:
SQL scripts
Python code
Documentation
📂 Project Structure

|-- data/              
|-- sql_queries/       
|-- notebooks/         
|-- README.md          
|-- requirements.txt   
|-- main.py
📊 Results & Insights
🔹 Sales Insights
Identified top-performing branches and categories
Analyzed preferred payment methods
🔹 Profitability
Found most profitable product categories
🔹 Customer Behavior
Identified peak shopping hours
Analyzed rating patterns
🔮 Future Enhancements
Dashboard integration (Power BI / Tableau)
Real-time data pipeline automation
Adding more datasets for deeper analysis
⚙️ Requirements
Python 3.8+
MySQL & PostgreSQL
Libraries:
pandas
numpy
sqlalchemy
mysql-connector-python
psycopg2
▶️ Getting Started
Bash
git clone <repo-url>
pip install -r requirements.txt
Set up Kaggle API
Download dataset
Run the project
📜 License
This project is licensed under the MIT License.
🙌 Acknowledgments
Data Source: Kaggle
Inspiration: Walmart business case studies
