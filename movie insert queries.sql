use movie;

insert into genre values (
'10', 'horror');
insert into genre values (
'20', 'thriller');
insert into genre values (
'30', 'action');
insert into genre values (
'40', 'drama');
insert into genre values (
'50', 'romance');



insert into director values (
'100',  'Spielberg', 'Steven');
insert into director values (
'200',  ' Scott', ' Ridley ');
insert into director values (
'300',  'Woo', 'John ');
insert into director values (
'400',  'Burton', ' Tim ');
insert into director values (
'500',  'Nolan', ' Christopher ');



insert into movie values (
'001', 'american beauty', '1988', '215', 'english','1988-06-01', 'USA');
insert into movie values (
'002', 'war room', '1970', '155', 'english','1970-01-01', 'UK');
insert into movie values (
'003', 'facing the giants', '1998', '244', 'yoruba','2005-12-06', 'CUBA');
insert into movie values (
'004', 'wedding party', '1998', '300', 'french','2017-04-01', 'dubai');
insert into movie values (
'005', 'eyes wide shut', '1999', '365', 'spanish','1999-08-01', 'spain');



insert movie_genres values (
'001', '10');
insert movie_genres values (
'002', '20');
insert movie_genres values (
'003', '30');
insert movie_genres values (
'004', '40');
insert movie_genres values (
'005', '50');


insert movie_direction values (
'100', '001');
insert movie_direction values (
'200', '002');
insert movie_direction values (
'300', '003');
insert movie_direction values(
'400', '004');
insert movie_direction values(
'500', '005');


insert reviewer values (
'123', 'olayinka');
insert reviewer values (
'124', 'tunde');
insert reviewer values (
'125', 'tosin');
insert reviewer values (
'126', 'gbenga');
insert reviewer values (
'127', 'sunday');


insert rating values (
'001', '123', '1000', null);
insert rating values (
'002', '124', '2000', '0.0');
insert rating values (
'003', '125', '3000', '3.0');
insert rating values (
'004', '126', '4000', '8.0');
insert rating values (
'005', '127', '5000', '7.0');