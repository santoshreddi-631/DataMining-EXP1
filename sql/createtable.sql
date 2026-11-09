-- 1. Patient Dimension
 CREATE TABLE dim_patient (
     patient_id SERIAL PRIMARY KEY,
     name VARCHAR(100),
     gender VARCHAR(10),
     age INT,
     city VARCHAR(100)
 );
CREATE TABLE

 -- 2. Doctor Dimension
 CREATE TABLE dim_doctor (
     doctor_id SERIAL PRIMARY KEY,
     name VARCHAR(100),
     specialization VARCHAR(100),
     experience_years INT
 );
CREATE TABLE

 -- 3. Hospital Dimension
 CREATE TABLE dim_hospital (
     hospital_id SERIAL PRIMARY KEY,
     hospital_name VARCHAR(150),
     location VARCHAR(100),
     hospital_type VARCHAR(50)
 );
CREATE TABLE

 -- 4. Date Dimension
 CREATE TABLE dim_date (
     date_id SERIAL PRIMARY KEY,
     visit_date DATE UNIQUE,
     month INT,
     quarter INT,
     year INT
 );
CREATE TABLE

 -- 5. Patient Visit Fact Table
 CREATE TABLE fact_patient_visit (
     visit_id SERIAL PRIMARY KEY,
     patient_id INT REFERENCES dim_patient(patient_id),
     doctor_id INT REFERENCES dim_doctor(doctor_id),
     hospital_id INT REFERENCES dim_hospital(hospital_id),
     date_id INT REFERENCES dim_date(date_id),
     diagnosis VARCHAR(150),
     treatment_cost NUMERIC(10,2),
     visit_duration_minutes INT
 );