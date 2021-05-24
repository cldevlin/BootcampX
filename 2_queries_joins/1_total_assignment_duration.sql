SELECT SUM(duration) AS total_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

-- COUNT(assignment_submissions.duration)

-- SELECT name, assignment_submissions.duration 
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE students.name = 'Ibrahim Schimmel';