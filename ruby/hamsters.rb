def hamster_survey
	puts "What is your hamster's name?"
	name = gets.chomp
		if name == ""
			name = Harry 
		end

	puts "How loud is you hamster (from 1 to 10)?"
	volume = gets.chomp

	puts "what color fur?"
	fur_color = gets.chomp

	puts "Is your hamster a good candidate for adoption?"
	good_candidate = gets.chomp

	puts "Estimated age of hamster?"
	estimated_age = gets.chomp
		if estimated_age == ""
			estimated_age = nil
		end
end


