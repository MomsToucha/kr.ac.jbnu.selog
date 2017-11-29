--- create database and set previledge to root account

create database simpleweb;
use simpleweb;
grant all privileges on simpleweb.* to root@localhost;



-- Create Member table

create table Member
(
	member_key INT not null AUTO_INCREMENT,
	member_name VARCHAR(30) not null default '',
	birthday INT not null default '',
	email_address VARCHAR(30) not null,
	password VARCHAR(30) not null,
	primary key(member_key)
);

-- 게시물 번호, 작성자 ID, 작성자 닉네임, 제목, 내용, 날짜, 게시물 공개여부
 
create table Post
(
	post_key int not null AUTO_INCREMENT,
	post_title varchar(200) not null,
	post_content varchar(5000) not null,
	post_date DATETIME,
	post_visible int not null,
	post_owner varchar(30) not null,
	primary key(post_key)
);


-- Insert data: ---------------------------------------------------------------
 
insert into Member (member_name, birthday, email_address, password)
values("song", 19950222, "shak5643@gmail.com", "root");

insert into Member (member_name, birthday, email_address, password)
values("park", 19950424, "reference@gmail.com", "1235456");

insert into Post (post_title, post_content, post_visible, post_owner)
values("test title", "test content", 1, "song");