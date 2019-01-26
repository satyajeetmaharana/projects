create table aggregate_tag_date(tag string ,creationdate string,count int) row format delimited fields terminated by ',';
insert into table aggregate_tag_date select tag,creationdate,count(*) from joined_tag_date WHERE tag IS NOT NULL AND creationdate IS NOT NULL group by tag,creationdate;
insert overwrite local directory '/bigtemp/DealingF18GB/aggregate_tag_date.csv' row format delimited fields terminated by ',' select * from aggregate_tag_date;
