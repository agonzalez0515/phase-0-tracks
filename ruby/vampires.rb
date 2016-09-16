#ask questions to employees


def vampire_test
	puts "What is your name?"
		name = gets.chomp

	puts "How old are you?" 
		age = gets.chomp.to_i


	puts "What year were you born?"
		year_born = gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		wants_garlic_bread = gets.chomp
			if wants_garlic_bread == "y"
				wants_garlic_bread = true
			else 
				wants_garlic_bread = false
			end

	puts "would you like to enroll in the company's health insurance?"
		wants_health_insurance = gets.chomp
			if wants_health_insurance == "y"
				wants_health_insurance = true
			else 
				wants_health_insurance = false
			end

	
	if name == "Drake Cula" || name == "Tu Fang"
		puts "definitely a vampire"

		elsif age + year_born == 2016 && (wants_garlic_bread || wants_health_insurance)
		puts "Probably not a vampire"

		elsif age + year_born != 2016 && (wants_garlic_bread || wants_health_insurance)
		puts "Probably a vampire"

		elsif age + year_born != 2016 && !(wants_garlic_bread && wants_health_insurance)
		puts "Almost definitely a vampire"

		else
			puts "Results inconclusive"

		
	end



puts "The employee's name is #{name}"
puts "The employee is #{age} years old"
puts "The employee was born in the year #{year_born}"
puts "Does the employee want garlic bread? #{wants_garlic_bread}"
puts "Does the employee want health insurance? #{wants_health_insurance}"


end

vampire_test



