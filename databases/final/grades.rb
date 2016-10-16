
require 'sqlite3'
require 'faker'


# create database 
db = SQLite3::Database.new("student_grades.db")

# creates database information as hash. I can access keys by their name this way.
db.results_as_hash = true

# delimiter to make a table that has each student's name and their scores
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

# create students table
db.execute(create_table_cmd)

# method to generate students with 4 scores each, can use to add students later
def create_students (db, name, essay_1, essay_2, midterm_1, midterm_2)
	db.execute("INSERT INTO students (name, essay_1, essay_2, midterm_1, midterm_2) VALUES (?, ?, ?, ?, ?)", [name, essay_1, essay_2, midterm_1, midterm_2])
end

# loop that calls method to create a student roster with grades. the names and grades are random.
# this is just to start the list. Teacher can add information later.

#30.times do
#  create_students(db, Faker::Name.name, rand(40..100), rand(40..100), rand(40..100), rand(40..100))
#end

roster = db.execute("SELECT * FROM students")
#p roster


# prints a nicer way to read the roster
#roster.each do |student|
#	puts "#{student['name']} has these grades: #{student['essay_1']}, #{student['essay_2']}, #{student['midterm_1']}, #{student['midterm_2']}."
#end


# calculates final grade by taking the average of 4 grades and creates new array
final_grades =[]
roster.each do |student|
	final_grades << (student['essay_1'] + student['essay_2'] + student['midterm_1'] + student['midterm_2'])/4
end

#p final_grades


# creates hash with key student name from roster table and value of final grade from array
final_student = {}
i=-1
roster.each do |student|
	i+=1
		final_student[student['name']] = final_grades[i]
end
	

# hash with each students' final grade
final_student

def check_grades (name, final_student)
	if 
		final_student[name] > 75
		puts "Your final score is #{final_student[name]}. Congratulations, you passed!"
	else
		puts "Your final score is #{final_student[name]}. Sorry, you did not pass."
	end
end


##User Interface

puts "Are you a teacher or student?"
answer = gets.chomp
if answer == "student"
	puts "This Semester's Final Grades:"
	puts "-" * 30
	puts "Please enter your full name."
	student_name = gets.chomp
	check_grades(student_name, final_student)
else
	teacher_program
end


def teacher_program
	puts "Please pick an option number."
	puts "1: Add student"
	puts "2: Delete student"
	puts "3: Check student"



	
