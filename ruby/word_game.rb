#take 1 word in at the start
#determine word length and set it equal to guess count
#split the word into secret word array
#ask user 2 for letter guess
#store guess in a different array
#iterate through the word to see if letter include?
#if include? print letter in correct spot
#if !include? ask for another guess and subract 1 from word count
#end game when word count == 0 or word is guessed



class Word_game
	attr_reader :word, :progress
	attr_accessor :guess_count

	def initialize(word) 
    	@word = word
    	@guess_count = @word.length
    	@secret_word = word.split(//)
    	@progress = ""
  	end

	

	#insert the guessed letter into the corresponding part of the new "progress" word.
	#as it is now, it inserts it either into every spot because of .each or inserts letter
	#duplicated if guessed 2 times. no good.
	def user_guess(letter)
		index = 0
		#@secret_word.each do |l|
			if @secret_word.include? letter 
				@progress.insert(@secret_word.index(letter), letter)
				else
				@progress << "-"
			end
		#end
	puts "Your word so far: #{@progress}"	
	@progress
	end

	def counter(letter)
		if !@secret_word.include? letter
				@guess_count -=1
		end
	end

	#doesn't work because if I call it, it will print either option.
	def game_over
		if @guess_count == 0
			puts "you suck. bye."
		elsif
			@progress == @word
			puts "You won!!!"
			return
		else

		end
	end

end





# user interface


puts "Let's play Secret Word!"
puts "Player 1, what's the secret word?"
word = gets.chomp.to_s
game_1 = Word_game.new(word)

game_1.guess_count
puts "Player 2, you have #{game_1.guess_count} guesses."
puts "Word is:" 
puts "-" * game_1.guess_count
puts "Ready? Let's play!"

while game_1.guess_count > 0
	puts "Please enter a letter"
	letter = gets.chomp.to_s
	game_1.user_guess(letter)
	game_1.counter(letter)
	puts "You have #{game_1.guess_count} guesses left."
end




