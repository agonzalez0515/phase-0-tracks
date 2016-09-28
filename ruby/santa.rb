class Santa

	def initialize(gender, ethnicity)
		@gender = gender.to_s
		@ethnicity = ethnicity.to_s
		@age = 0

		puts "Initializing Santa instance..."
	end


	def speak
		puts "ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!!"
	end

	def celebrate_birthday
		@age = @age + 1
		puts "You are now #{@age} years old!"
	end


	def about
		puts "Gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"

	end

	
	def get_mad_at index
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	
			reindeer_ranking.insert(-1, reindeer_ranking.delete_at(index))
	
	end

end



#santacon = Santa.new
#puts santacon.speak
#puts santacon.eat_milk_and_cookies("oreo")

#santas = []

#santas << Santa.new("female", "latina")
#santas << Santa.new("male", "white")


		
	


puts "Test..."



#santas.each do |santa|
#	santa.speak
#end

puts "How old are you?"
@age = gets.chomp

santa1 = Santa.new("male", "white")
santa1.about

