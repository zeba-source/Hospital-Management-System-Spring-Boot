INSERT INTO users (name, email, password, role)
SELECT 'Admin User', 'admin@hospital.com', '$2a$10$yVYVHPB9mtGNoSG8qIvfleBiaqWKMg8rf3.O4kiJgCoSovvpf.xMu', 'ADMIN'
WHERE NOT EXISTS (
    SELECT 1 FROM users WHERE email = 'admin@hospital.com'
);

INSERT INTO users (name, email, password, role)
SELECT 'Sarah Doctor', 'sarah@hospital.com', '$2a$10$yVYVHPB9mtGNoSG8qIvfleBiaqWKMg8rf3.O4kiJgCoSovvpf.xMu', 'DOCTOR'
WHERE NOT EXISTS (
    SELECT 1 FROM users WHERE email = 'sarah@hospital.com'
);

INSERT INTO users (name, email, password, role)
SELECT 'Patient User', 'patient@hospital.com', '$2a$10$yVYVHPB9mtGNoSG8qIvfleBiaqWKMg8rf3.O4kiJgCoSovvpf.xMu', 'PATIENT'
WHERE NOT EXISTS (
    SELECT 1 FROM users WHERE email = 'patient@hospital.com'
);

INSERT INTO patients (patient_id, name, email, phone, gender, date_of_birth, user_id)
SELECT 'PAT-0001', 'Patient User', 'patient@hospital.com', NULL, NULL, NULL, u.id
FROM users u
WHERE u.email = 'patient@hospital.com'
  AND NOT EXISTS (
      SELECT 1 FROM patients p WHERE p.email = 'patient@hospital.com'
  );