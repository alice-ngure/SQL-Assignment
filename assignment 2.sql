select * from dataanalytics.international_debt 

select count(*) from dataanalytics.international_debt;

--what is the total amount of debt owed by all the countries in the dataset?

select sum(debt) as total_debt
from dataanalytics.international_debt;


--how many distinct countries are recorded in the dataset?

select count (distinct country_name) as countries_count
from dataanalytics.international_debt;

--what are the distinct type of debt indicators,and what do they represent?

select distinct indicator_name,indicator_code
from dataanalytics.international_debt ;

--which country has the highest total debt and how much does it owe?

select country_name,sum(debt) as total_debt
from dataanalytics.international_debt 
group by country_name 
order by total_debt desc 
limit 1;


--what is the average debt across different debt indicators?

select indicator_name,AVG(debt)as average_debt
from dataanalytics.international_debt 
group by indicator_name;


--which country has made the highest amount of principal repayments?

select country_name, sum(debt) as total_repayments
from dataanalytics.international_debt 
where indicator_name ='principal repayments'
group by country_name 
order by total_repayments desc 
limit 1;

--what is the most common debt indicator across all countries?

select indicator_name,count(*) as frequency
from dataanalytics.international_debt 
group by indicator_name 
order by frequency desc
limit 1;



