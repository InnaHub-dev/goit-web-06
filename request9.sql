"""Найти список курсов, которые посещает определенный студент."""

SELECT s.fullname, d.name
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN students s ON s.id = g.student_id 
WHERE s.id = 34
GROUP by d.name
ORDER by d.name ASC;