select t.name, count(pt.post_id) from tags t left join posts_tags pt on t.id = pt.tag_id group by t.id;