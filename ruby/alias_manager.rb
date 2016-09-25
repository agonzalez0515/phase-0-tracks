

#"Felicia Torres" will become "Vussit Gimodoe"

=begin PSEUDOCODE
enter name to be changed
break name up into into 2 separate strings
work with one string at a time
1st string: 
	split into individual characters array
	change the vowels into the next vowel in "aeiou"
	change the consonant into the next letter in alphabet

2nd string:
	repeat the same as first

put the array back into a string
switch the two strings' order
=end


name = ""

#split name into individual characters array and replaces vowels
#with next one in array
def vowel_changer(letters)
	letters_array = letters.split('')
	vowels = ["a", "e", "i", "o", "u"]

	letters_array.map! do |letter|

		if vowels.include? letter
			letter = vowels[vowels.index(letter)+1]
		else
			letter
		end
	end
	letters_array.join('')
end

#split name into individual characters array and replaces consonants
#with next one in array

def consonant_changer(letters2)
	letters_array2 = letters2.split('')
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

	letters_array2.map! do |letter2|

		if consonants.include? letter2
			letter2 = consonants[consonants.index(letter2)+1]
		else
			letter2
		end
	end
	letters_array2.join('')
end


#split the name with the replaced letters into an array of 2, then switch places
#of words, and bring back the initial cap
def two_names(name)
	final_name = name.split(' ').rotate
	final_name.map! { |word| word.capitalize! }
	final_name.join(' ')
end


#create an array from the user input 
alias_data = []
loop do
	puts "Please enter a name"
	name= gets.chomp.downcase
	alias_name = two_names(consonant_changer(vowel_changer(name)))
	puts alias_name
	alias_data << alias_name
	
	break if name == "quit"
end

p alias_data

#problem is that i'm only storing the alias_name as an array. I want to 
#store the original name with it's corresponding alias, which means
#I need a hash. I haven't been able to figure out how to create a new
#hash from user input.

=begin NOTES
- I wanted to make a block for .map! and then
call it in each method so that it wasn't typed inside each time, 
but I wasn't able to figure it out yet. It would give me an undefined variable error.

- I also still need a way to handle edge cases, "z" and "u".
=end




