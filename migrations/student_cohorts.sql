CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL, 
  name VARCHAR(255) NOT NULL, 
  start_date DATE, 
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL, 
  name VARCHAR(255) NOT NULL, 
  email VARCHAR(255), 
  phone VARCHAR(32), 
  github VARCHAR(255), 
  start_date DATE, 
  end_date DATE, 
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);



-- SELECT students.name AS student_name, cohorts.name AS cohort_name, cohorts.start_date AS cohort_start_date, students.start_date AS student_start_date
-- FROM students
-- JOIN cohorts
-- ON cohorts.id = cohort_id
-- WHERE cohorts.start_date <> students.start_date;