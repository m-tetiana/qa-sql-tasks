select *
from comments c
where c.create_date >= date_sub(now(), interval 10 hour);