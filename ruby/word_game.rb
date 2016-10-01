#enter word
#determine word length and set it equal to guess count
#split the word into array
#ask user 2 for letter guess
#store guess in a different array
#iterate through the word to see if letter include?
#if include? print letter in correct spot
#if !include? ask for another guess and subract 1 from word count
#end game when word count == 0

class Word_game
	attr_reader :word, :guess_count

	def initialize(word) 
    @guess_count = 0
    @is_over = false
    @word = word
  end

	def guesses
		@guess_count = @word.length
	end

	def word_to_guess
		secret_word = @word.split("")
	end

end

game_1 = Word_game.new("unicorn")
p game_1.guesses
p game_1.word_to_guess
