

#"Felicia Torres" will become "Vussit Gimodoe"

=begin PSEUDOCODE
Split name into char array. Go through each letter and replace them if they include one of the
letters in the vowels and consonants.
put the array back into a string
switch the two strings' order
=end




#split name into individual characters array and replaces letters with next one in array
def changer(letters)
	letters_array = letters.split('')
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	
	letters_array.map! do |letter|

		if vowels.include? letter
			letter = vowels[vowels.index(letter)+1]
		elsif
			consonants.include? letter
			letter = consonants[consonants.index(letter)+1]
		else
			letter
		end
	end
	letters_array.join('')
end


#split the name with the replaced letters into an array of 2, then switch places
#of words, and bring back the initial cap
def two_names(name)
	final_name = name.split(' ').rotate
	final_name.map! { |word| word.capitalize! }
	final_name.join(' ')
end


###

#DRIVER CODE
#create an array from the user input 
alias_data = {}
loop do
	puts "Please enter a name. Type quit if you are done."
	name = gets.chomp.downcase
	break if name == "quit"
	alias_name = two_names(changer(name))
	
	old_name = name.split.map! { |word| word.capitalize }
	old_name = old_name.join(' ')
	alias_data[old_name] = alias_name
	
	
end


alias_data.each do |key, value|
	puts "#{key} has a secret name of #{value}."
end



=begin
PROBLEMS
- I also still need a way to handle edge cases, "z" and "u".
- don't need 'quit' inside the hash
=end




