

class Santa 

	attr_accessor :gender, :ethnicity, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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
	end


	def get_mad_at(name)

		index = reindeer_ranking.index(name)
		reindeer_ranking.insert(-1, reindeer_ranking.delete_at(index))
	end

	def random_age
	@age = rand(140)
	end
	
end


#Driver Code
#santacon = Santa.new("female", "latina")
#santacon.celebrate_birthday
#puts santacon.speak
#puts santacon.eat_milk_and_cookies("oreo")


#p santacon.get_mad_at("Rudolph")

#p santacon.gender
#santacon.gender = "male"
#puts "This Santa's gender is #{santacon.gender}"

#puts "This santa is #{santacon.age} years old."
#puts "This sants identifies as #{santacon.ethnicity}."


#Release 4

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trans", "non-binary"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "native-american", "pacic islander"]


#my_santa = Santa.new(genders.sample, ethnicities.sample)
#my_santa.random_santas
#p my_santa
#p my_santa.gender



100.times do 

	my_santa = Santa.new(genders.sample, ethnicities.sample)
	p my_santa.random_age
	puts "This santa's gender is #{my_santa.gender} and ethnicity is #{my_santa.ethnicity}."
	puts "This santa is #{my_santa.age} years old."
	puts "Happy Birthday! This santa is now #{my_santa.celebrate_birthday}."
	puts "_" * 15 
end




