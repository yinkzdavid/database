use movie;
/* QUESTION 1
Write a query in SQL to find the name and year of the movies.*/
select  mov_title, mov_year
from movie;

/* QUESTION 2
Write a query in SQL to find the year when the movie American Beauty released.*/
select mov_year
from movie
where mov_title = 'american beauty'; 

/* QUESTION 3
Write a query in SQL to find the movie which was released in the year 1999*/
select mov_title
from movie
where mov_year = '1999';


/* QUESTION 4
Write a query in SQL to find the movies which was released before 1998*/
select mov_title
from movie
where mov_year = '1998';

/* QUESTION 5
Write a query in SQL to return the name of all reviewers and name of movies together in a single list*/
select distinct rev_name, mov_title
from reviewer, movie;

/* QUESTION 6
Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating*/
select rev_name
from reviewer
where rev_id in 
				(select rev_id 
				from rating
				where num_o_ratings >= 7.0);

/*QUESTION 7
Write a query in SQL to find the titles of all movies that have no ratings.*/

select mov_title
from movie
where  mov_id in 	
					(select mov_id
					from rating
					where num_o_ratings = 0);

/* QUESTION 8
Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value*/
select rev_name
from reviewer
where rev_id in (select rev_id
				from rating
				where num_o_ratings = Null);

/*  QUESTION 9
Write a query in SQL to find the name of movie and director (first and last names) who directed a movie 
that casted a role for 'Eyes Wide Shut'*/



select dir_lname, dir_fname
from director 
where dir_id in 
				(select dir_id
				from movie_direction
                where mov_id in
                (select mov_id
                from movie
                where mov_title = 'Eyes wide shut'));


