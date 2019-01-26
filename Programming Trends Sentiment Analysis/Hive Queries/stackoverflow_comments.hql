create external table stackoverflow_comments  (id int, postid int, score int, text string, creationdate string,userid int) row format delimited fields terminated by ','
location '/user/DealingF18GB8/Project/Hivetables_stackcomments/' ;
