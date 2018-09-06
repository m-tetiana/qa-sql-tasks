select t.id, t.text, count(c.id) as comments_count
from twits t
       left join comments c on t.id = c.twit_id
group by t.id;