create external table Stackoverflow_posts (id  int, tags string, owneruserid int, lastedate string, answercount int, creationdate string, acceptedanswerid int)
row format delimited fields terminated by ',' 
location '/user/DealingF18GB8/Project/Hivetables/’;
tblproperties ("skip.header.line.count"="1");

create external table stackoverflow_posts  (id int, tags string, owneruserid int, lastdate string, answercount int, creationdate string,acceptedanserid int) row format delimited fields terminated by ','
location '/user/DealingF18GB8/Project/Hivetables_stackposts/' ;
