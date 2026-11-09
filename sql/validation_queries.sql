SELECT COUNT(*) AS patient_count FROM dim_patient;
SELECT COUNT(*) AS doctor_count FROM dim_doctor;
SELECT COUNT(*) AS hospital_count FROM dim_hospital;
SELECT COUNT(*) AS date_count FROM dim_date;
SELECT COUNT(*) AS visit_count FROM fact_patient_visit;

SELECT d.year, d.month, COUNT(f.visit_id) AS total_visits,
       SUM(f.treatment_cost) AS total_treatment_cost
FROM fact_patient_visit f
JOIN dim_date d ON d.date_id = f.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;
