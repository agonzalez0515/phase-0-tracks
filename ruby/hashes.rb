
=begin
PSEUDOCODE
1. Create a hash called 'Client' that stores the following information 
about them: name, age, number of children, decor theme, requires padding, 
number of rooms, lives in a high rise.
2. Create an application form for the Client to answer
3. Store client answers in hash


client {
	name: ,
	age: ,
	number_of_children: ,
	decor_theme: ,
	number_of_rooms: ,
	high_rise: 
}
=end


#driver code aka the client's application

client = {} 
	puts "Please answer the following questions"

	puts "Name"
	client[:name] = gets.chomp

	puts "Age"
	client[:age] = gets.chomp

	puts "How many children do you have?"
	client[:number_of_children] = gets.chomp

	puts "What is your decor theme?"
	client[:decor_theme] = gets.chomp

	puts "How many rooms do you have?"
	client[:number_of_rooms] = gets.chomp

	puts "Do you live in a high rise?"
	client[:high_rise] = gets.chomp

	puts "Thank you for the information. Do you need to update
	any entry? y/n"
		wants_to_update = gets.chomp
		
		if wants_to_update == "y"
			wants_to_update = true
			puts "Please type category you would like to update"
			new_category = gets.chomp.to_sym
			puts "Please type new answer"
			client[new_category] = gets.chomp
			
		else wants_to_update = false
			
		end
		
	
p client

