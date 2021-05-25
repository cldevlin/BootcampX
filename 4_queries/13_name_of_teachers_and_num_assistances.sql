-- SELECT teachers.name, COUNT(assistance_requests.*) AS total_assistances
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- GROUP BY assistance_requests.teacher_id, teachers.name;

SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;


-- , COUNT(teachers.name) AS total_assistance