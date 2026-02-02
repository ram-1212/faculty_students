CREATE TABLE admins (
  id SERIAL PRIMARY KEY,
  admin_id VARCHAR(32) UNIQUE NOT NULL,
  name VARCHAR(120) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  mobile VARCHAR(20),
  password_hash TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE faculty (
  id SERIAL PRIMARY KEY,
  faculty_id VARCHAR(32) UNIQUE NOT NULL,
  name VARCHAR(120) NOT NULL,
  department VARCHAR(120) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  mobile VARCHAR(20),
  address TEXT,
  specialization VARCHAR(120),
  experience_years INTEGER DEFAULT 0,
  photo_url TEXT,
  password_hash TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  student_id VARCHAR(32) UNIQUE NOT NULL,
  name VARCHAR(120) NOT NULL,
  department VARCHAR(120) NOT NULL,
  year_level INTEGER NOT NULL,
  semester INTEGER NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  mobile VARCHAR(20),
  address TEXT,
  photo_url TEXT,
  password_hash TEXT NOT NULL,
  active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_faces (
  id SERIAL PRIMARY KEY,
  user_role VARCHAR(16) NOT NULL,
  user_ref_id VARCHAR(32) NOT NULL,
  embedding BYTEA NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE password_resets (
  id SERIAL PRIMARY KEY,
  user_role VARCHAR(16) NOT NULL,
  user_ref_id VARCHAR(32) NOT NULL,
  otp_code VARCHAR(12) NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  consumed_at TIMESTAMP
);

CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(120) UNIQUE NOT NULL
);

CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  code VARCHAR(32) UNIQUE NOT NULL,
  name VARCHAR(255) NOT NULL,
  department_id INTEGER REFERENCES departments(id),
  semester INTEGER NOT NULL
);

CREATE TABLE faculty_subjects (
  id SERIAL PRIMARY KEY,
  faculty_id INTEGER REFERENCES faculty(id) ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE
);

CREATE TABLE student_subjects (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE
);

CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE,
  attendance_date DATE NOT NULL,
  period VARCHAR(20),
  status VARCHAR(16) NOT NULL,
  recorded_by INTEGER REFERENCES faculty(id)
);

CREATE TABLE internal_marks (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE,
  mid1 INTEGER,
  mid2 INTEGER,
  assignment INTEGER,
  updated_by INTEGER REFERENCES faculty(id),
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE semester_marks (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE,
  external_marks INTEGER,
  result_status VARCHAR(32)
);

CREATE TABLE fees (
  id SERIAL PRIMARY KEY,
  semester INTEGER NOT NULL,
  total_amount NUMERIC(10, 2) NOT NULL
);

CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  semester INTEGER NOT NULL,
  amount_paid NUMERIC(10, 2) NOT NULL,
  paid_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
