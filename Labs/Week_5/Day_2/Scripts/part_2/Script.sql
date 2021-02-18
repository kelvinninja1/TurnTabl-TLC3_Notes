--Grouping and Aggregate Functions
--Get average prices from the titles table for each type of book, and convert type to char(30).
select type::character(30), avg(price::numeric)
as "Average_Price_By_Type"
from titles group by type;


--Print the difference between (to a resolution of days) the earliest and latest publication date in titles
select max(pubdate) - min(pubdate)
as "Difference"
from titles;
--godson
SELECT min(pubdate) as min_date, max(pubdate) as max_date, 
		(DATE_PART('year', max(pubdate) ::date) - DATE_PART('year', min(pubdate)::date)) * 12 +
       (DATE_PART('month', max(pubdate) ::date) - DATE_PART('month', min(pubdate)::date))from pubs2.titles;

--Print the average, min and max book prices within the titles table organised into groups based on type and publisher id.
select type, pub_id, avg(price::numeric)
as "Average_Price", min(price::numeric) as "Min_Price", max(price::numeric) as "Max_Price"
from titles group by type, pub_id;


--Refine the previous question to show only those types whose average price is > $20 and output the results sorted on the average price.
select type, pub_id, avg(price::numeric)
as "Average_Price", max(price::numeric), min(price::numeric)
from titles group by pub_id, type having avg(price::numeric) > 20 ;


--List the books in order of the length of their title
select title, length(title)
as length_of_title 
from titles 
group by title 
order by lenny;





--Business Queries
--
--What is the average age in months of each type of title?
--
select type,age(current_date,pubdate),date_part('month',age(current_date,pubdate)) as "Age in months" from titles group by type,pubdate ;


--How many authors live in each city?
--
select city, count(city) as "Number of authors in each city" from authors group by city;
--What is the longest title?
select title, length(title) 
as length_of_title 
from titles where length(title) = (select max(length(title)) from titles);

--How many books have been sold by each store and how many books have been sold in total?
select stor_id, sum(qty)  as "Books sold by each store" from sales group by stor_id;
select sum(qty) as "Total Books Sold" from sales;
