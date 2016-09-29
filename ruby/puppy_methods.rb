class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def initialize
		puts "Initializing Puppy instance..."
	end

	def speak(i)
		puts "woof! " * i
	end

	def roll_over
		puts "*roll over*"
	end

	def dog_years(human_years)
		dog_age = human_years * 7
	end

end

fido = Puppy.new

puts fido.fetch("stick")
puts fido.speak(3)
puts fido.roll_over
puts fido.dog_years(2)