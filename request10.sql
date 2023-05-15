"""Список курсов, которые определенному студенту читает определенный преподаватель."""

SELECT s.fullname, t.fullname, d.name
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN students s ON s.id = g.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 2 AND t.id = 5
GROUP by d.name
ORDER by d.name ASC;