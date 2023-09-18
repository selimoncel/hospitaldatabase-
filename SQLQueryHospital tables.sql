CREATE TABLE Patient (
  patient_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(10),
  date_of_birth DATE,
  phone_number VARCHAR(20),
  email VARCHAR(100),
  insurance_provider VARCHAR(100),
  insurance_policy_number VARCHAR(50)
);

CREATE TABLE Visit (
  visit_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  date_of_visit DATE,
  reason_for_visit VARCHAR(500),
  diagnosis VARCHAR(500),
  procedur VARCHAR(500),
  tests VARCHAR(500),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Doctor (
  doctor_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(10),
  phone_number VARCHAR(20),
  email VARCHAR(100),
  specialty VARCHAR(100)
);

CREATE TABLE Treatment (
  treatment_id INT PRIMARY KEY,
  visit_id INT,
  doctor_id INT,
  name_of_treatment VARCHAR(500),
  date_of_treatment DATE,
  dosage VARCHAR(50),
  frequency VARCHAR(50),
  notes VARCHAR(500),
  FOREIGN KEY (visit_id) REFERENCES Visit(visit_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Medication (
  medication_id INT PRIMARY KEY,
  visit_id INT,
  name_of_medication VARCHAR(500),
  dosage VARCHAR(50),
  frequency VARCHAR(50),
  instructions VARCHAR(500),
  notes VARCHAR(500),
  FOREIGN KEY (visit_id) REFERENCES Visit(visit_id)
);

CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100)
);

CREATE TABLE Employee (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(10),
  phone_number VARCHAR(20),
  email VARCHAR(100),
  job_title VARCHAR(100)
);

CREATE TABLE Work_Assignment (
  work_assignment_id INT PRIMARY KEY,
  employee_id INT,
  department_id INT,
  startdate DATE,
  end_date DATE,
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);