UPDATE position 
set 
status_id = (SELECT id from status where name = 'Filtered')
WHERE company_id IN(SELECT id from company c where c.order < 0);

CREATE TEMPORARY TABLE temp_table AS
select p.id from position p
inner join filter f on (`p`.detail LIKE CONCAT('%', `f`.word, '%')) or (`p`.name LIKE CONCAT('%', `f`.word, '%'))
inner join status s on s.id = p.status_id
WHERE s.name = 'Review';

UPDATE position pos
set 
pos.status_id = (SELECT id from status where name = 'Filtered')
WHERE id IN(Select id from temp_table);

DROP TEMPORARY TABLE temp_table;