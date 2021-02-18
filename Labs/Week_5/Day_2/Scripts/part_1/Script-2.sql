select * from pubs2.titles;

--Q1 Find all titles with an undefined price in table titles
select title from pubs2.titles where price is null;

--Q2 Find all titles with an undefined price in table titles and supply a price of $20.00 for those with no defined price
select price as "Real Price", case
		when price is null then '20.00'::numeric::money
		else price
	end as price
	from pubs2.titles;

--Q3 List the first 50 characters (of the pr_info column) of the pub_info table
select substring(pr_info,1,50) from pubs2.pub_info;

--Q4 Examine the Postgres function reference for alternative ways of converting date values to varchar
select pubdate, to_char(pubdate,'mm/dd/yyyy') from titles;


--Q5 Locate and use one the functions that would allow you to specify the format to be used when outputting a date. Format the ord_date in sales so it looks like this: Tuesday 13th September 1994
select ord_date, to_char(ord_date, 'Day ddth month yyyy') from sales;
