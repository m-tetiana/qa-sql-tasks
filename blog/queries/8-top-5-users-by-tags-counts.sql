select u.first_name, u.last_name
from users u
       left join posts p on u.id = p.author_id
       left join posts_tags pt on p.id = pt.post_id
group by u.id
order by count(pt.tag_id) desc
limit 5;