class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
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
		 @age += 1
		puts "This santa is now #{@age} years old!"
	end


	def get_mad_at(name)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	
		index = reindeer_ranking.index(name)
		reindeer_ranking.insert(-1, reindeer_ranking.delete_at(index))
	end

	def gender
		@gender
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

santacon = Santa.new("female", "latina")
santacon.celebrate_birthday
#puts santacon.speak
#puts santacon.eat_milk_and_cookies("oreo")


#p santacon.get_mad_at("Rudolph")

p santacon.gender
santacon.gender = "male"
puts "This Santa's gender is #{santacon.gender}"

p santacon.age
p santacon.ethnicity

#santas = []

#santas << Santa.new("female", "latina")
#santas << Santa.new("male", "white")
#santas << Santa.new("non-binary", "japanese")
#santas << Santa.new("trans", "native-american")
#p santas





=begin



	def about
		puts "Gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"

	end

	
	
=end