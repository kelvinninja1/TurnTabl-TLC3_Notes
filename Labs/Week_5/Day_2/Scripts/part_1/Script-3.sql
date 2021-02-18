--Functions

--Date and time manipulation are an important aspect of working with most datasets, and a common source of errors and innaccuracy.
--
--The first few exercises encourage you to explore the reference documentation for the date and time functions supported by your DBMS.
--
--Some of the later exercises make use of other scalar functions, including string functions which are often useful in parsing character data held in database fields.

--Getting Started

--Current Time

--1. Display the current date
select current_date;

--2. Display the current time
select current_time;

--3. Display the current timestamp
select current_timestamp;


--Converting from Strings

--1. Convert the string '2018-09-26' to a date
select to_date('2018-09-26','yyyy-mm-dd');" or "select ('2018-09-26'::date);

--2. Convert the string '2018-09-26' to a timestamp
select to_timestamp('2018-09-26 12:45:32','yyyy mm dd hh24:mi:ss') ;" or "select ('2018-09-26 12:45:32'::timestamp);


--Subtracting Dates

--1. How many days are there between '2018-09-26' and '2018-12-25'?
select abs(to_date('2018-09-26','yyyy mm dd') - to_date('2018-12-25','yyyy mm dd')) ;

--2. How many days have elapsed since each book in TITLES was published?
select pubdate, abs(pubdate - current_date) as difference from titles;

--Extracting components from dates

--Display the year of publication of each book in TITLES.

--Display the day of publication of each book in TITLES.

--Using TIMESTAMPDIFF

--1. The function TIMESTAMPDIFF() provides a rough approximation of the difference between two timestamps.

--*What shortcuts does it take in calculating the difference?

--*When might it make sense to use TIMESTAMPDIFF()?

--*Using TIMESTAMPDIFF(), get the difference between these dates: '2018-03-02' and '2018-02-01'.

--Exercises

-- 1. In a SELECT-statement, add the difference between 2011-01-01 and the current date to the sales date field in the sales table.
--
--The output should show both the new value and original sales date, with the original in dd-mm-yy format.

--2. Show how many days remain between now and Thanksgiving and/or Christmas and/or New Years Day.

--3. Show how old you are as a number of days - you don't have to be too honest about your year of birth if you are over 25 

--4. For each of the publication dates in titles, display the difference between the pubdate and the current date in days as an integer.

--5. From the sales table convert the date field to dd/mm/yy format

--6. select from the sales table stor_id for sales on your birthday in "dd/mm/yy" format. 
--If there are none, then pick sales for the date nearest to your birthdate. Search again for before your birthday.

--7. Study the reference documents for your DBMS and then display each book title with its publication date converted to the correct format for each of the following regions:
--
--* USA
--* UK
--* Japan


--8. Show the first word of each title.
--
--9. Print the number of characters which could be added to each of the values in the title field before the data is truncated. You can find the title column's length using the system commands for your DBMS.
--
--10. Replace the first space in the address field in the authors table with the word --hello--.
--
--11. Provide a randomly generated price for all titles lacking a price in the titles table. (math functions)
--
--12. Print all phone numbers from the authors table without the three digit area code.
--
--13. Capitalise the second character in all last names from the authors table.