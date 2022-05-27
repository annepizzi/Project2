# Extract, Transfer, Load
Group Members: Zach Meader, Anne Pizzini, Joshua Yesufu, Ellen Grove

# Data Sources:
1. IRS Tax return Zip code data for 2019 (IRS Tax Returns): https://www.irs.gov/e-file-providers/definition-of-adjusted-gross-income   
2. US Zip codes population density data (Population Density): https://simplemaps.com/data/us-zips  

# Background
We chose these data sets because the ability to join them will be straightforward 
given we have a primary key of zip code for the population density data table that 
can match the foreign key of zip code for the IRS tax return data.



# Extract Process

1) Imported Dependencies for Pandas and Sqlalchemy
2) Import CSV files into Pandas environment and read CSV files
3) Transform into dataframe


# Transform Process
1) Create lists to hold values for Population Density and for IRS Tax Returns based on selected columns
-Population Density: Zip code, State, Adjusted Gross Income, AGI Stub 
-IRS Tax Returns: Zip code, State, City, Population Density, Population 
2) Rename columns and drop duplicates and drop index

# Create SQL Database
1) Create new database in SQL
2) Create tables for Population Density and for IRS Tax Returns

# Connect Database
1) Connected SQL Database to python by creating a string for
2) 
3) Population and population density data per zip code from: https://simplemaps.com/data/us-zips.
4) Data located in 'Resources/uszips.csv'.


- Drop any null values from the datasets
- Drop any zip codes that are not applicable to the 50 states
- Rename the columns to match each table
- Only include relevant column within both databases


How many tables we are going to have in the database
Table 1: IRS Tax return zip code data
Columns:
- Zip code – Foreign Key
- State
- City
- Adjusted Gross Income
Table 2: US Zip code Population Data
Columns:
- Zip code – Primary Key
