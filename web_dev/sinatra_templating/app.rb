# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/delete' do
	erb :delete
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/student' do
	db.execute("DELETE FROM students WHERE name=?", [params['name']])
	redirect '/'
end

post '/student_id' do
	db.execute("DELETE FROM students WHERE id=?", [params['id']])
	redirect'/'
end

# add static resources