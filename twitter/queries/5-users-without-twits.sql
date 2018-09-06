select u.first_name, u.last_name
from users u
       left join followers f on u.id = f.user_id
where f.user_id is null;