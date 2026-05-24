# Hospital Management System

A modern full-stack Hospital Management System built using Spring Boot, Java 21, PostgreSQL, Thymeleaf, and Tailwind CSS.

---

## Overview

This project is designed to digitize hospital workflows and simplify patient, doctor, and appointment management through an integrated web platform.

The system provides role-based access for administrators, doctors, and patients with secure authentication and real-time scheduling features.

---

## Features

### Patient Module
- Patient registration and login
- Book appointments online
- View appointment history
- Manage profile information

### Doctor Module
- View assigned appointments
- Manage schedules
- Access patient information
- Update appointment status

### Admin Module
- Manage users and roles
- Monitor appointments
- Configure hospital operations
- Dashboard analytics

---

## Technology Stack

### Backend
- Java 21
- Spring Boot 3
- Spring Security
- Spring Data JPA
- Hibernate

### Frontend
- Thymeleaf
- Tailwind CSS
- HTML5
- JavaScript

### Database
- PostgreSQL

### DevOps
- Docker
- Docker Compose

---

## Project Architecture

```text
Controller Layer
↓
Service Layer
↓
Repository Layer
↓
Database
```

---

## Security Features

- Role-based authentication
- BCrypt password encryption
- CSRF protection
- Secure session handling

---

## Database Design

```text
Users
Patients
Doctors
Appointments
Schedules
```

---

## Installation

### Clone Repository

```bash
git clone https://github.com/your-username/Hospital-Management-System-Spring-Boot.git
```

---

## Configure Database

Update the database configuration inside:

```text
src/main/resources/application.properties
```

Example:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/hospital_db
spring.datasource.username=postgres
spring.datasource.password=yourpassword
```

---

## Run Using Maven Wrapper

### Windows

```bash
mvnw.cmd spring-boot:run
```

### Linux / Mac

```bash
./mvnw spring-boot:run
```

---

## Docker Deployment

```bash
docker-compose up --build
```

---

## Default Access

| Role | Email | Password |
|------|-------|----------|
| Admin | admin@hospital.com | password |
| Doctor | doctor@hospital.com | password |

---

## Main Functionalities

- Authentication & Authorization
- Appointment Scheduling
- Patient Record Management
- Doctor Dashboard
- Admin Dashboard
- Real-Time Calendar Integration
- Responsive UI

---

## Deployment

This project can be deployed on:

- Render
- Railway
- Docker
- AWS
- Azure

---

## Screenshots

Add screenshots here after deployment.

---

## Future Improvements

- AI-based symptom analysis
- Online video consultation
- E-prescription generation
- Email notifications
- Mobile application support

---

## License

This project is developed for educational and learning purposes.
