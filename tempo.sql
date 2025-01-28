sudo mysqldump -u root --routines --triggers --no-create-db --databases newNova > newNova_dump.sql

sudo mysql -u root -p

SELECT * FROM newNova.to_review;

select p.id, p.name, f.word from position p
inner join filter f on (`p`.detail LIKE CONCAT('%', `f`.word, '%')) or (`p`.name LIKE CONCAT('%', `f`.word, '%'))
inner join status s on s.id = p.status_id
WHERE s.name = 'Review' order by p.id;

UPDATE newNova.position set status_id = (SELECT id from status where name = 'Filtered') WHERE id IN();

UPDATE newNova.position set status_id = (SELECT id from status where name = 'Filtered') WHERE company_id IN(SELECT id from company c where c.order < 0);

SELECT (CASE
            WHEN (`c`.`order` = 1) THEN '⭐'
            ELSE ''
        END) AS mark,
        `c`.name AS company,
        `p`.id AS id,
        `p`.name AS position,
        `p`.post_date AS post_date,
        `p`.url AS job_url
FROM newNova.position p
inner join company c on c.id = p.company_id
inner join status s on s.id = p.status_id
where s.name = 'Review'
ORDER BY `c`.order DESC , `p`.post_date DESC , `c`.name;
