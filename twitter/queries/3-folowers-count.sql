select u.first_name, u.last_name, count(f.follower_id) as followers_count
from users u
       left join followers f on u.id = f.user_id
group by u.id;