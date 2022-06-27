-- create database
create database covid;
show databases;

-- create table
create table covid.variants
(
	location varchar(26),
    date date,
    variant varchar(26),
    num_sequences int,
    perc_sequences float,
    num_sequences_total int
);

-- show databases
show databases;

-- use database
use covid;

-- show tables
show tables;

-- table 이름 바꾸기 --
alter table variants rename country_variants;

alter table country_variants rename variants;
show tables;

-- comment 달기 --
alter table variants comment='국가별 감염자 수';
desc variants;
show tables;

-- 열 추가 -- 
alter table variants add ID int;
show tables;
desc variants;

alter table variants add ID2 int,
add ID3 int;

alter table variants drop column ID;
alter table variants drop column ID2;
alter table variants drop column ID3;

-- 열 옵션 추가 --
alter table variants add id int first;
alter table variants add id2 int after date;
alter table variants add id3 int null;
alter table variants add id4 int not null;
alter table variants add id5 int not null auto_increment primary key;
alter table variants add description varchar(26) default '-Description-';

-- =================================== --

-- alter table variants drop column id ;
desc variants;

-- 열수정 --
-- change -- 
alter table variants change `description` `desc` varchar(30);
desc variants;

alter table variants change column `desc` `description` varchar(30);

-- modify -- 
alter table variants modify description varchar(25);
desc variants;
alter table variants modify column description varchar(30);

alter table variants 
modify description varchar(26), -- (,) 을 이용해 여러개의 열을 수정할 수 있다.
modify num_sequences double;

desc variants;

alter table variants modify column id int first;
alter table variants modify column id int NOT NULL;
alter table variants alter column description set default 'WOW'; -- 기본값을 할당할 때는 alter column을 활용하여 기본값 설정
desc variants;


-- 열 삭제 --
alter table variants drop column id;
desc variants;

-- table drop --
drop table variants;
show tables;

-- drop database
drop database covid;
show databases;