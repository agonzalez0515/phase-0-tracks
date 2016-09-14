def hamster_survey
	puts "What is your hamster's name?"
	name = gets.chomp
		if name == ""
			name = Harry 
		end


	puts "How loud is you hamster (from 1 to 10)?"
	volume = gets.chomp.to_i
	# volume.to_i

	puts "what color fur?"
	fur_color = gets.chomp

	puts "Is your hamster a good candidate for adoption (y/n)?"
	good_candidate = gets.chomp
		if good_candidate == y
			good_candidate = true

		elsif good_candidate == n
			good_candidate = false

		else 
			good_candidate = nil
		end


	puts "Estimated age of hamster?"
	estimated_age = gets.chomp.to_f
		if estimated_age == ""
			estimated_age = nil
		end


	puts "The hamster's name is #{name}."
	puts "The hamster is #{volume} level."
	puts "It's fur color is #{fur_color}."
	unless good_candidate == nil puts "The hamster is a good candidate? #{good_candidate}"
	puts "The estimated age of the hamster is #{estimated_age}."
end

hamster_survey 
