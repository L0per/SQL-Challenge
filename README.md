# SQL Fun with Salaries
* Using provided `.csv` files from an old database, the database is rebuilt and analyzed by:

  1. **Data Modeling**: designing an ERD
  2. **Data Engineering**: create table schema and import `.csv` files
  3. **Data Analysis**: create various queries in SQL to probe whether the database is real or fabricated, and visualize using Pandas

## Files
* [data](https://github.com/L0per/SQL-Challenge/tree/master/data) = database tables were provided as csv files
* `ERD_schema.sql` = database schema created from https://app.quickdatabasediagrams.com/#/
* `query.sql` = various queries probing the database
* `db_vis.ipynb` = visualizing database using Pandas

## Data Modeling and Engineering
* The `.csv` files were successfully imported into tables from the following ERD:

![ERD](https://github.com/L0per/SQL-Challenge/blob/master/Images/ERD.png?raw=true)

## Data Analysis
### Salary Distributions
* Plotting the distribution of salaries by each position title reveals an excess of salaries around $40000 -- regardless of position title -- which suggests a fabricated dataset:

![salary distributions](https://github.com/L0per/SQL-Challenge/blob/master/Images/dist_title_salaries.png?raw=true)

### Average Salaries
* Average salary does not increase with seniority of title, suggesting a fabricated dataset:

![salary barplot](https://github.com/L0per/SQL-Challenge/blob/master/Images/bar_title_salaries.png?raw=true)

### April Fools
* It is indeed fabricated:

![aprilfools](https://github.com/L0per/SQL-Challenge/blob/master/Images/aprilfools.PNG?raw=true)
