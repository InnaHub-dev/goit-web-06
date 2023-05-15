"""Найти студента с наивысшим средним баллом по определенному предмету."""

SELECT s.fullname, ROUND(AVG(g.grade), 2) AS average, d.name
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 5
GROUP by s.fullname
ORDER by average DESC
LIMIT 1;