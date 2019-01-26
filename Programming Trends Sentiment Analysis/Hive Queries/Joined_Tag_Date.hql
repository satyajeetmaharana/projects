create table joined_tag_date(id int,tag string ,creationdate string) row format delimited fields terminated by ',';
insert into table joined_tag_date select t.id ,t.tag ,p.creationdate from stackoverflow_posts p inner join stackoverflow_tags t on p.id=t.id 
