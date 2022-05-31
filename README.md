# Extract, Transfer, Load
Group Members: Zach Meader, Anne Pizzini, Joshua Yesufu, Ellen Grove

# Data Sources and Technology:
1. IRS Tax Returns: IRS Tax return Zip code data for 2019  
- Source: https://www.irs.gov/e-file-providers/definition-of-adjusted-gross-income   
2. Population Density: US Zip codes population density data
- Source: https://simplemaps.com/data/us-zips  
3. Technology: Pandas and Sqlalchemy

# Background
We chose these data sets because the ability to join them will be straightforward 
given we have a primary key of zip code for the population density data table that 
can match the foreign key of zip code for the IRS tax return data. In addition, we 
contemplated what sort of analysis could be done based on the tables in this database
and thought that interesting insights could be distilled relating to income, tax bracket, zip code, and the population density within a zip code.

# Extract Process

1) Imported Dependencies for Pandas and Sqlalchemy
2) Import CSV files into Pandas environment and read CSV files
3) Transform into dataframe

# Transform Process
1) Create lists to hold values for Population Density and for IRS Tax Returns based on selected columns
- Population Density: Zip code, State, Adjusted Gross Income, AGI Stub 
- IRS Tax Returns: Zip code, State, City, Population Density, Population 
2) Identify zip codes within the Tax Returns dataset not present within the Population Density dataset and add zip codes to Population Density dataset (in order to capture all data and avoid primary key errors)
3) Rename columns and drop duplicates and drop index

# Create SQL Database
1) Create new database in SQL
2) Use Zip_code in Population Density as Primary Key
3) For IRS Tax Returns create a foreign key for zip codes that references zio_codes in Population Density
4) Create tables for Population Density and for IRS Tax Returns

# Connect Database
1) Connected SQL Database to python using config.py and adding to string = f'{protocol}://{username}:{password}@{host}:{port}/{database_name}' and perform engine.table_names()
2) Insert data into Population Density and IRS Tax Returns tables using to_sql

# Finish Data Cleaning in SQL
1) Join tables in SQL on zip codes
2) Find Zip Codes unmapped and add them to population density table
