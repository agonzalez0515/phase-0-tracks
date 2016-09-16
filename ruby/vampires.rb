#ask questions to employees






#if some_boolean_variable
#  puts "some_boolean_variable is true!"
#else
#  puts "some_boolean_variable is false!"
#end


#It think the portion where the directions state `Your program should base its 
#result on the latest condition matched, not the first condition matched.` 
#is referring to the && and || operators



#elsif name == "Drake Cula"
	#	puts "Definitely a vampire"

#	elsif name == "Tu Fang"
		#puts "Definitely a vampire"

#	else
#		"Results inconclusive"



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



end

vampire_test


