require 'sqlite3'
require 'faker'


#create database 
db = SQLite3::Database.new("student_grades.db")

#creates database information as hash. I can access keys by their name
db.results_as_hash = true

#delimiter to make a table that has each student's name and their scores
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

#create students table
db.execute(create_table_cmd)

#method to generate students with 4 scores each
def create_students (db, name, essay_1, essay_2, midterm_1, midterm_2)
	db.execute("INSERT INTO students (name, essay_1, essay_2, midterm_1, midterm_2) VALUES (?, ?, ?, ?, ?)", [name, essay_1, essay_2, midterm_1, midterm_2])
end

#loop that calls method to create a student roster with grades. the names and grades are random.
#30.times do
#  create_students(db, Faker::Name.name, rand(40..100), rand(40..100), rand(40..100), rand(40..100))
#end

roster = db.execute("SELECT * FROM students")
#p roster


#prints a nicer way to read the roster
roster.each do |student|
	puts "#{student['name']} has these grades: #{student['essay_1']}, #{student['essay_2']}, #{student['midterm_1']}, #{student['midterm_2']}."
end


final_grades =[]

roster.each do |student|
	final_grades << (student['essay_1'] + student['essay_2'] + student['midterm_1'] + student['midterm_2'])/4
end

p final_grades

