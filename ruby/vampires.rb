#ask questions to employees




	def vampire_test
		puts "How many employees will be processed?"
		number_of_employees = gets.chomp.to_i
		
		while number_of_employees > 0
			number_of_employees = number_of_employees - 1
		

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

		puts "would you like to enroll in the company's health insurance? (y/n)"
			wants_health_insurance = gets.chomp
				if wants_health_insurance == "y"
					wants_health_insurance = true
				else 
					wants_health_insurance = false
				end
		

			allergies = " "
			puts "Please list all allergies. Type done when finished."

			until allergies == "done" || allergies == "sunshine"
			allergies = gets.chomp
			end

				if allergies == "sunshine"
					allergies = true
				else
					allergies = false 	
				end

			
			if allergies 
				puts "Probably a vampire"

				elsif name == "Drake Cula" || name == "Tu Fang"
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
		
						#prints employee answers
						puts "The employee's name is #{name}."
						puts "They are #{age} years old and born in the year #{year_born}."
						puts "Does the employee want garlic bread? #{wants_garlic_bread}."
						puts "Does the employee want health insurance? #{wants_health_insurance}."
		

		end
	end


vampire_test



