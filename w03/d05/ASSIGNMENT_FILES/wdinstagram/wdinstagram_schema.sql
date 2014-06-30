drop table if exists photos;

create table photos(
  id serial primary key,
  poster varchar(255),
  img_url varchar(255),
  date_posted date,
  caption varchar(255)
);