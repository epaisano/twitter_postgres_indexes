select count(*) from tweets
where to_tsvector('english',text)@@to_tsquery('english', 'coronavirus') and lang='en';
