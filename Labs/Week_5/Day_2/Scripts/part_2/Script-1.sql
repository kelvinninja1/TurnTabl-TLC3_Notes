--Table Joins

--Join the publishers and pub_info and show the publisher name and the first 40 characters of the pr_info information.

--Join the publishers and titles tables to show all titles published by each publisher. Display the pub_id, pub_name and and title_id.

--For each title_id in the table titles, rollup the corresponding qty in salesand show: title_id, title, ord_num and the rolled-up value as a column aggregate called Total Sold
--

--For each stor_id in stores, show the corresponding ord_num in sales and the discount type from table discounts. The output should consist of three columns: ord_num, discount and discounttype and should be sorted on ord_num
--

--Show au_lname from authors, and pub_name from publishers when both publisher and author live in the same city.
--

--Refine 5 so that for each author you show all publishers who live in the same city and have published one of the authors titles.
--
--Refine 1 so that an outer join is performed. All of the publishers from the first table should be shown, not just those with pr_info information in pub_info. You should use the ANSI SQL92 syntax.
--
--List each publisher's name, the title of each book they have sold and the total quantity of that title.



--Business Queries
--
--How many books have been published by each publisher?
--
--How many different types of book has each publisher published?
--
--What is the average royalty percentage payed to each author?
--
--For each store list which authors have had their books sold through that store.
