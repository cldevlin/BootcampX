SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;




-- SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING AVG(completed_at - started_at) > ALL(SELECT AVG(completed_at - started_at) AS average_assistance_time 
--                                             FROM assistance_requests
--                                             JOIN students ON student_id = students.id
--                                             GROUP BY cohorts.name);
--                                             JOIN cohorts ON cohort_id = cohorts.id

                                    -- HAVING AVG(completed_at - started_at) > TIMESTAMP(0)