"""Найти средний балл в группах по определенному предмету."""

SELECT gr.name, ROUND(AVG(g.grade), 2) AS average_group_grade, d.name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 5
GROUP by gr.name
ORDER by gr.name;