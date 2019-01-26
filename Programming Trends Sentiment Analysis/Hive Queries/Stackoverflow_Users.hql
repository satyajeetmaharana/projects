create external table stackoverflow_users  (Id int,Reputation int,CreationDate string,LastAccessDate string,Location string,Views int,UpVotes int,DownVotes int,AccountId int) row format delimited fields terminated by ','
location '/user/DealingF18GB8/Project/Hivetables_stackusers' ;
