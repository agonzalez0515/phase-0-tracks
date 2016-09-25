

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




name = "Felicia Torres"
name.downcase!

#split name into individual characters array and replaces vowels
#with next one in array
def vowel_changer(letters)
	letters_array = letters.split('')
	vowels = ["a", "e", "i", "o", "u"]

	new_name = letters_array.map! do |letter|

		if vowels.include? letter
			letter = vowels[vowels.index(letter)+1]
		else
			letter
			
		end
		
	end
	new_name = letters_array.join('')
end

#split name into individual characters array and replaces consonants
#with next one in array

def consonant_changer(letters2)
	letters_array2 = letters2.split('')
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

	new_name2 = letters_array2.map! do |letter2|

		if consonants.include? letter2
			letter2 = consonants[consonants.index(letter2)+1]
		else
			letter2
		end
	end
	new_name2 = letters_array2.join('')
end


#split the name with the replaced letters into an array of 2, then switch places
#of words, and bring back the initial cap
def two_names(name)
	final_name = name.split(' ').rotate
	final_name.map! { |word| word.capitalize! }
	final_name = final_name.join(' ')

end

p two_names(consonant_changer(vowel_changer(name)))





