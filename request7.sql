"""Найти оценки студентов в отдельной группе по определенному предмету."""

SELECT gr.name, s.fullname, d.name, g.grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE s.group_id = 2 AND d.id = 3
ORDER by s.fullname ASC;