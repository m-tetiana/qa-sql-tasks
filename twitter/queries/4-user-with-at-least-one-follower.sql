select u.first_name, u.last_name
from users u
       left join followers f on u.id = f.user_id
group by u.id
having count(f.follower_id) > 0;