"""Найти средний балл, который ставит определенный преподаватель по своим предметам."""

SELECT t.fullname, ROUND(AVG(g.grade), 2), d.name
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 2
GROUP by t.fullname, d.name
ORDER by d.name ASC;