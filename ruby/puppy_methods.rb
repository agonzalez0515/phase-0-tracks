class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize
		puts "Initializing Puppy instance..."
		@toy = stick
	end

end

fido = Puppy.new

puts fido.fetch