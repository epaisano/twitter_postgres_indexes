select tag, count(*) as count from (
    select distinct id_tweets, t2.tag from tweet_tags t1
    join tweet_tags t2 using(id_tweets)
    where t1.tag='#coronavirus' and t2.tag like '#%') as t
group by (1)
order by count desc, tag
limit 1000;
