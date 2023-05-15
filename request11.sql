"""Средний балл, который определенный преподаватель ставит определенному студенту."""

SELECT s.fullname, t.fullname, ROUND(AVG(g.grade), 2)
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN students s ON s.id = g.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 4 AND t.id = 5;