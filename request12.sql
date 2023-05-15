"""Оценки студентов в определенной группе по определенному предмету на последнем занятии."""

SELECT s.fullname, gr.name, g.grade, g.date_of 
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN students s ON s.id = g.student_id 
JOIN [groups] gr ON gr.id = s.group_id 
WHERE gr.id = 3 AND d.id = 2 AND g.date_of = 
(
	SELECT MAX(g.date_of)
	FROM grades g
	JOIN disciplines d ON d.id = g.discipline_id 
	JOIN students s ON s.id = g.student_id 
	JOIN [groups] gr ON gr.id = s.group_id 
	WHERE gr.id = 3 AND d.id = 2
	)
ORDER by s.fullname ASC;