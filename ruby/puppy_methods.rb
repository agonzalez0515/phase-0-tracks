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

	def cuddle
		puts "*cuddles*"
	end

end

=begin
fido = Puppy.new

puts fido.fetch("stick")
puts fido.speak(3)
puts fido.roll_over
puts fido.dog_years(2)
puts fido.cuddle
=end

class DBC

	def initialize
		puts "Initializing DBC method.. time for another pairing!"
	end

	def refactor
		puts "You need to refactor your code!"
	end

	def feedback(x)
		if x==true
			puts "Awesome work!"
		else
			puts "No bueno :("
		end
	end
end


new_dbc = []

50.times do |x|
	x=DBC.new
	new_dbc<<x
end

#p new_dbc

#new_dbc[0].refactor

new_dbc.each do |item|
	item.refactor
	item.feedback(false)
end
