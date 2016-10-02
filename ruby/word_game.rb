#enter word
#determine word length and set it equal to guess count
#split the word into array
#ask user 2 for letter guess
#store guess in a different array
#iterate through the word to see if letter include?
#if include? print letter in correct spot
#if !include? ask for another guess and subract 1 from word count
#end game when word count == 0
#secret_word = ["u", "n", "i", "c", "o", "r", "n"]


class Word_game
	attr_reader :guess_count, :word


	def initialize(word) 
    @guess_count = 0
    @word = word
    @secret_word = word.split(//)
  	end

	def guesses
		@guess_count = @word.length
	end

	
	def user_guess(letter)
		index = 0
		progress = ""
		@secret_word.each do |l|
			if letter.include? l
				progress << letter[index]
			else
				progress << "-"
			end
		end
	puts "This is your word so far:#{progress}"
	end

	def counter(letter)
		if @secret_word.include? letter
			@guess_count
		else
			@guess_count -=1
		end
		print "You have #{@guess_count} guesses left."
	end

end






# user interface


puts "Let's play Secret Word!"
puts "Player 1, what's the secret word?"
word = gets.chomp.to_s
game_1 = Word_game.new(word)

game_1.guesses
puts "Player 2, you have #{game_1.guess_count} guesses."
puts "Ready? Let's play!"

while game_1.guesses > 0
	puts "Please enter a letter"
	letter = gets.chomp.to_s
	game_1.user_guess(letter)
	game_1.counter(letter)
end






=begin
while !game.is_over
  puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
  guess = gets.chomp.to_i
  if !game.check_cup(guess - 1)
  	puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"

game_1 = Word_game.new("unicorn")
p game_1.guesses
p game_1.word_to_guess
game_1.user_guess("u")
p game_1.user_guess("b")
p game_1.guess_count
p game_1.user_guess("c")
p game_1.guess_count
p game_1.user_guess("a")
p game_1.guess_count
=end
