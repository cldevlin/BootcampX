SELECT AVG(cohort_total_durations.total_duration) AS average_total_duration
FROM (SELECT cohorts.name AS cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
      FROM assistance_requests
      JOIN students ON student_id = students.id
      JOIN cohorts ON cohort_id = cohorts.id
      GROUP BY cohorts.name
      ORDER BY total_duration) AS cohort_total_durations;