select p.id, p.title, p.text, p.author_id, group_concat(t.name separator ', ')
from posts p
       left join posts_tags pt on p.id = pt.post_id
       left join tags t on pt.tag_id = t.id
group by p.id;