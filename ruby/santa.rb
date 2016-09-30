class Santa 

	attr_accessor :gender, :ethnicity, :age

	def initialize
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
	end


	def get_mad_at(name)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	
		index = reindeer_ranking.index(name)
		reindeer_ranking.insert(-1, reindeer_ranking.delete_at(index))
	end

	def random_santas
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trans", "non-binary"]
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "native-american", "pacic islander"]
		@gender = example_genders.sample
		@ethnicity = example_ethnicities.sample
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

100.times do

	my_santa = Santa.new
	my_santa.random_santas
	my_santa.age = rand(140)
	puts "This santa's gender is #{my_santa.gender} and ethnicity is #{my_santa.ethnicity}."
	puts "This santa is #{my_santa.age} years old."
	puts "Happy Birthday! This santa is now #{my_santa.celebrate_birthday}."
	puts "_" * 15 
end







