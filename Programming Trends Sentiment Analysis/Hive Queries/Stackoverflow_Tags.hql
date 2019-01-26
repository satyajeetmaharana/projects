create external table Stackoverflow_tags  (id int, tag string) ;
insert into table stackoverflow_tags SELECT Id, tag FROM stackoverflow_posts lateral view explode(split(tags,'\;')) tags AS tag;
