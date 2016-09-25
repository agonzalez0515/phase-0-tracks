
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
	client[:age] = gets.chomp.to_i

	puts "How many children do you have?"
	client[:number_of_children] = gets.chomp.to_i

	puts "List 3 decor themes you like."
	client[:decor_theme] = gets.chomp.split


	puts "How many rooms do you have?"
	client[:number_of_rooms] = gets.chomp.to_i

	puts "Do you live in a high rise?"
	client[:high_rise] = gets.chomp

	puts "Thank you for the information. Do you need to update
	any entry? y/n"
		wants_to_update = gets.chomp
		
		if wants_to_update == "y"
			wants_to_update = true
			puts "Which category would you like to update?"
			update = gets.chomp.to_sym
			puts "What is your new answer?"
			new_ansewer = gets.chomp
				if update == :name
					client[:name] = new_ansewer
				elsif update == :age
					client[:age] = new_ansewer
				elsif update == :number_of_children
					client[:number_of_children] = new_ansewer	
				elsif update == :decor_theme
					client[:decor_theme] = new_ansewer
				elsif update == :number_of_rooms
					client[:number_of_rooms] = new_ansewer
				else 
					update == :high_rise
					client[:high_rise] = new_ansewer
				end		


			#puts "Please type new answer"
			#client[:update] = gets.chomp

		else wants_to_update = false

		end
		
	
p client

