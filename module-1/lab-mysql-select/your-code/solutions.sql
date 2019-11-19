/*Challenge 1 - Who Have Published What At Where?*/
SELECT
authors.au_id as "AUTHOR ID",
authors.au_lname as "LAST NAME",
authors.au_fname as "FIRST NAME",
titles.title as "TITLE",
publishers.pub_name as "PUBLISHER"
FROM titles
join authors on authors.au_id = titleauthor.au_id
join titleauthor on titleauthor.title_id = titles.title_id
join publishers on titles.pub_id = publishers.pub_id;

/*Challenge 2 - Who Have Published How Many At Where?*/
SELECT
authors.au_id as "AUTHOR ID",
authors.au_lname as "LAST NAME",
authors.au_fname as "FIRST NAME",
SUM(COUNT(titles.title_id)) as total_titles from publishers
publishers.pub_name as "PUBLISHER"
FROM titles
join titles on publishers.pub_id = titles.pub_id
join authors on authors.au_id = titleauthor.au_id
join titleauthor on titleauthor.title_id = titles.title_id
join publishers on titles.pub_id = publishers.pub_id;

/*Challenge 3 - Best Selling Auth*/
select publishers.pub_name AS 'AUTHOR ID',
authors.au_lname as 'LAST NAME',
authors.au_fname as 'FIRST NAME',
COUNT(titles.title_id) as total_titles 
from publishers
join authors on authors.au_id = titleauthor.au_id
join titles on publishers.pub_id = titles.pub_id
group by publishers.pub_name;