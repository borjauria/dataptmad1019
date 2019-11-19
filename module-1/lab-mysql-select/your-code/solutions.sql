Challenge 1 - Who Have Published What At Where?

SELECT
authors.au_id as 'AUTHOR ID',
authors.au_lname as 'LAST NAME',
authors.au_fname as 'FIRST NAME',
titles.title as 'TITLE',
publishers.pub_name as 'PUBLISHERS'
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id;

SELECT COUNT()
FROM titleauthor;

Challenge 2 - Who Have Published How Many At Where?

SELECT
authors.au_id as 'AUTHOR ID',
authors.au_lname as 'LAST NAME',
authors.au_fname as 'FIRST NAME',
publishers.pub_name as 'PUBLISHERS',
COUNT(titles.title) as 'TITLE COUNT'
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY titleauthor.au_id
ORDER BY authors.au_id DESC;

Challenge 3 - Best Selling Authors

SELECT
authors.au_id as 'AUTHOR ID',
authors.au_lname as 'LAST NAME',
authors.au_fname as 'FIRST NAME',
SUM(sales.qty) as 'TOTAL'
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
JOIN sales
ON sales.title_id = titles.title_id
GROUP BY titleauthor.au_id
ORDER BY SUM(sales.qty) DESC
LIMIT 3;

Challenge 4 - Best Selling Authors Ranking






