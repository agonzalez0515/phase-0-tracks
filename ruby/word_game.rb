#enter word
#determine word length and set it equal to guess count
#split the word into array
#ask user 2 for letter guess
#store guess in a different array
#iterate through the word to see if letter include?
#if include? print letter in correct spot
#if !include? ask for another guess and subract 1 from word count
#end game when word count == 0

class Word_Game

	def initialize 
    @guess_count = 0
    @is_over = false
  end

	def guesses(word)
		@guess_count = word.length
	end

	def word_to_guess(word)
		secret_word = word.split("")
	end

end

