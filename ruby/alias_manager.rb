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





first_name = "felicia"
last_name = "torres"

#split into individual characters array
def into_chars(name)

	new_name = name.split('')
	
end

p into_chars(first_name)
p into_chars(last_name)

#["f", "e", "l", "i", "c", "i", "a"]

#change the vowels into the next vowel in "aeiou"
#change the consonant into the next letter in alphabet
def fake_name(new_name)
	vowels = "aeiou"
	alphabet = "bcdfghjklmnpqrstvwxyz"
	
	new_name
	

=end


#split into individual characters array
first_name = "felicia"
def into_chars(name)

	letters = name.split('')
	
end

p into_chars(first_name)

#iterate through the letters array with .map
def changing_letters(letters)
	letters.map! do |letter|
		

