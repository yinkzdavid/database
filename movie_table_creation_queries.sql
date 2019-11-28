use movie;

create table actor (
act_id			integer			not null,
act_fname		char(20)		not null,
act_lname		char(20)		not null,
act_gender		char(1)			not null,
constraint		actor_pk		primary key(act_id)
);

create table movie_cast (
act_id			integer			not null,
mov_id			integer			not null,
role			char(30)		not null,
constraint		movie_cast_fk	foreign key(act_id)
					references 	actor(act_id),
constraint		movie_cast1_fk	foreign key(mov_id)
					references	movie(mov_id)
);



create table genre (
gen_id			integer			not null,
gen_title		char(20)		not null,
constraint		genre_pk		primary key(gen_id)
);

create table director (
dir_id			integer			not null,
dir_fname		char(20)		not null,
dir_lname		char(20)		not null,
constraint		director_pk		primary key(dir_id)
);
create table movie (
mov_id					integer			not null,
mov_title				char(50)		not null,
mov_year				integer			not null,
mov_time				integer			not null,
mov_lang				char(50)		not null,
mov_dt_rel				date			not null,
mov_rel_country			char(5)			not null,
constraint				movie_pk		primary key(mov_id)
);

create table movie_genres (
mov_id				integer				not null,
gen_id				integer				not null,
constraint			movie_genres_fk		foreign key(mov_id)
					references			movie(mov_id),
constraint			movie_genres1_fk	foreign key(gen_id)
					references			genre(gen_id)
);

create table movie_direction (
dir_id			integer				not null,
mov_id 			integer				not null,
constraint		movie_direction_fk	foreign key(dir_id)
				references			director(dir_id),
constraint		movie_direction1_fk	foreign key(mov_id)
				references 			movie(mov_id)

);

create table reviewer(
rev_id			integer				not null,
rev_name		char(30)			not null,
constraint		reviewer_pk			primary key(rev_id)

);

create table rating (
mov_id					integer		not null,	
rev_id					integer		not null,
rev_stars				integer		not null,
num_o_ratings			integer		null,
constraint				movie_fk	foreign key(mov_id)
						references	movie(mov_id),
constraint				reviewer_fk	foreign key(rev_id)
						references	reviewer(rev_id)
);