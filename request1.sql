"""Найти 5 студентов с наибольшим средним баллом по всем предметам."""

SELECT s.fullname AS student, ROUND(AVG(g.grade), 2) AS highest_average
FROM grades g
JOIN students s ON s.id = g.student_id
GROUP by s.fullname 
ORDER by highest_average DESC
LIMIT 5;
