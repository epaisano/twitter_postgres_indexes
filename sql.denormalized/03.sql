select lang, count(distinct id_tweets) as count
from tweet_tags
join tweets using (id_tweets)
where tag='#coronavirus'
group by lang 
order by count desc, lang;
