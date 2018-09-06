set @current_user_id = 1;

select *
from twits t
where t.user_id = @current_user_id
   or t.user_id in (select f.follower_id from followers f where f.user_id = @current_user_id)
order by t.create_date desc;