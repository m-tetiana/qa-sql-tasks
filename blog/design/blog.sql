create table users (
  id int not null primary key AUTO_INCREMENT,
  first_name varchar(50) not null,
  last_name varchar(50) not null
);

create table posts (
  id int not null primary key AUTO_INCREMENT,
  title varchar(300) not null,
  text text not null,
  date timestamp not null,
  author_id integer not null,
  foreign key (author_id) references users(id)
);

create table tags (
  id int not null primary key AUTO_INCREMENT,
  name varchar(100) not null
);

create table posts_tags (
  post_id int not null,
  tag_id int not null,
  primary key (post_id, tag_id),
  foreign key (post_id) references posts(id),
  foreign key (tag_id) references tags(id)
);