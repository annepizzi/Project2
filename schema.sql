CREATE TABLE us_zips (
zip_code VARCHAR Primary Key,
state VARCHAR,
city VARCHAR,
population INT,
population_density DEC);

CREATE TABLE tax_info (
zip_code VARCHAR,
state VARCHAR,
adjusted_gross_income INT,
tax_bracket VARCHAR);

SELECT * FROM us_zips
JOIN tax_info
ON us_zips.zip_code = tax_info.zip_code;


