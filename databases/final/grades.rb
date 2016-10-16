require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("student_grades.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    essay_1 INT,
    essay_2 INT,
    midterm_1 INT,
    midterm_2 INT
  );
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO students (name, essay_1, essay_2, midterm_1, midterm_2) VALUES ('Captain', 60, 50, 70, 65);")