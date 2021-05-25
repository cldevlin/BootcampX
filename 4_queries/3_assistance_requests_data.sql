-- SELECT 
--   (SELECT name FROM teachers WHERE id = teacher_id) AS teacher, 
--   (SELECT name FROM students WHERE id = student_id) AS student, 
--   (SELECT name FROM assignments WHERE id = assignment_id) AS assignment, 
--   completed_at - started_at AS duration
-- FROM assistance_requests
-- ORDER BY duration;

SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, completed_at - started_at AS duration
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;