create database movie ;

use movie ;

create table directors ( director_id int primary key , director_name varchar(20) ) ;

create table genres ( genre_id int primary key , genre_name varchar(20) ) ;

create table movies ( movie_id int primary key , title varchar(20) , release_yr int , director_id int , foreign key(director_id) references directors(director_id) ) ; 

create table movie_genres ( movie_id int , genre_id int , foreign key(movie_id) references movies(movie_id) , foreign key(genre_id) references genres(genre_id)) ;

insert into directors values ( 11 , 'Rajamouli' ) , ( 22 , 'Sukumar' ) , ( 44 , 'Suryah' ) , ( 55 , 'Trivikram' ) ; 

insert into genres values ( 111 , 'action drama' ), ( 222 , 'action thriller' ) , ( 333 , 'fiction' ) , ( 444 , 'romance' ) ;

insert into movies values ( 1 , 'bahubali' , 2015 , '11' ) , ( 2 , 'pushpa' , 2023 , '22' ) ,  (3 , 'bro' , 2023  , null ) , ( 4 , 'kushi' , 2001 , '55' ) , ( 5 , 'Arya' , 2019 ,'22' ) ;  

insert into movie_genres values ( 1 , 111 ) , ( 2 , 222 ) , ( 3 , 333 ) , ( 4 , 444 ) , ( 5 , 444 ) ; 

select m.title , d.director_name from movies m LEFT JOIN directors d on m.director_id = d.director_id ;

select m.title , m.release_yr , d.director_name from movies m LEFT JOIN directors d on m.director_id = d.director_id ; 

select d.director_name , m.title from directors d LEFT JOIN movies m on d.director_id = m.director_id ; 

select m.title , m.release_yr , d.director_name from movies m JOIN directors d on m.director_id = d.director_id ; 

select movies.title , genres.genre_name from movie_genres JOIN movies on movies.movie_id = movie_genres.movie_id join  genres on movie_genres.genre_id = genres.genre_id ;
