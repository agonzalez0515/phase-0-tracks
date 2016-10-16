
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

# delete a student
def delete_students(db, student_name)
	db.execute("DELETE FROM students WHERE name=?", [student_name])
end

# teacher checks student's data
def check_student (db, student_name, final_student)
	puts db.execute("SELECT * FROM students WHERE name=?;", [student_name])
	puts "Final Grade: #{final_student[student_name]}"
end



# loop that calls method to create a student roster with grades. The names and grades are random.
# This is just to start the list. Teacher can add information later. Commented out after running it once, 
# or else it would keep adding 30 students everytime the program runs.

#30.times do
#  create_students(db, Faker::Name.name, rand(40..100), rand(40..100), rand(40..100), rand(40..100))
#end


roster = db.execute("SELECT * FROM students")

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


# method for students to check their grade
def check_grades (name, final_student)
	if 
		final_student[name] > 75
		puts "Your final score is #{final_student[name]}. Congratulations, you passed!"
	else
		puts "Your final score is #{final_student[name]}. Sorry, you did not pass."
	end
end



##User Interface##

puts "Are you a teacher or student?"
answer = gets.chomp
if answer == "student"
	puts "-" * 30
	puts "This Semester's Final Grades:"
	puts "-" * 30
	puts "Please enter your full name."
	student_name = gets.chomp
	check_grades(student_name, final_student)
else
	puts "Please pick an option number."
	puts "1: Add student"
	puts "2: Delete student"
	puts "3: Check student"
	puts "4: Print all grades"
	puts "5: Quit"
	option = gets.chomp.to_i
		
			if option == 1
				puts "Enter full name:"
				name = gets.chomp
				puts "Enter Essay 1 score"
				essay_1 = gets.chomp
				puts "Enter Essay 2 score"
				essay_2 = gets.chomp
				puts "Enter Midterm 1 score"
				midterm_1 = gets.chomp
				puts "Enter Midterm 2 score"
				midterm_2 = gets.chomp
				create_students(db, name, essay_1, essay_2, midterm_1, midterm_2)
				puts "Thank you. The student has been added to the database."
			elsif option == 2
				puts "Please enter the name of the student you would like to delete."
				delete_name = gets.chomp
				delete_students(db, delete_name)
				puts "Thank you. The student has been removed from the database."
			elsif option == 3
				puts "Please enter the name of the student you would like to check."
				name_check = gets.chomp
				check_student(db, name_check, final_student)
			elsif option == 4
				puts final_student
				
			else option == 5
				puts "Thank you for being an awesome teacher!"
			end	
end







