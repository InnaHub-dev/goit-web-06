"""Найти какие курсы читает определенный преподаватель."""

SELECT t.fullname, d.name
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 2
ORDER by d.name ASC;