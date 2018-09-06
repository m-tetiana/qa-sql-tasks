create table users (
  id int not null primary key AUTO_INCREMENT,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  birthday date not null
);

create table followers (
  user_id int not null,
  follower_id int not null,
  primary key (user_id, follower_id),
  foreign key (user_id) references users(id),
  foreign key (follower_id) references users(id)
);

create table twits (
  id int not null primary key AUTO_INCREMENT,
  text varchar(500) not null,
  create_date timestamp not null,
  user_id int not null
);

create table comments (
 id int not null primary key AUTO_INCREMENT,
 comment varchar(200) not null,
 create_date timestamp not null,
 user_id int not null,
 twit_id int not null,
 foreign key (user_id) references users(id),
 foreign key (twit_id) references twits(id)
);
