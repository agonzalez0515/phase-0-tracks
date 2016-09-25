=begin
1.Swapping the first and last name.
2.Changing all of the vowels (a, e, i, o, or u) to the next 
vowel in 'aeiou', and all of the consonants 
(everything else besides the vowels) to the next 
consonant in the alphabet. So 'a' would become 'e', 
'u' would become 'a', and 'd' would become 'f'.

"Felicia Torres" will become "Vussit Gimodoe"
end=

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


#split first name into individual characters array and replaces vowels
#with next one
def create_alias(letters)
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

name = "felicia"
create_alias(name)






