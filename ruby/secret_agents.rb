# encrypt pseudocode: 
#	-get password from user
#	-advance each letter by 1 letter alphabetically
#   -output new encrypted password

def encrypt(pass)
	for i in 0...pass.length
		if pass[i] == " "
			next
		elsif pass[i] == "z"
			pass[i] = "a"
			next
		else
			pass[i] = pass[i].next
		end
	end
#	puts pass
	pass
end

#decrpyt pseudocode:
#	-get encrypted password from user
#	-go back one letter alphabetically
#   -output decrypted password


def decrypt(encrypted_pass)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	for i in 0...encrypted_pass.length
		encrypted_pass[i] = alphabet[alphabet.index(encrypted_pass[i])-1]
	end
#	puts encrypted_pass
	encrypted_pass
end

#TESTS

#encrypt("abc") 
#encrypt("zed") 
#decrypt("bcd") 
#decrypt("afe") 

#decrypt(encrypt("swordfish"))
# This works because the implicit return of the encrypt method is a string.



#Interface pseudocode:
#	- Ask user if they want to decrypt or encrypt
# 	- Ask usr for password
# 	- Do encrypt or decrypt method depending on first answer
# 	- Print result


ls
#DRIVER CODE
puts "Do you want to encrypt or decrypt your password?"
	encrypt = gets.chomp.downcase == "encrypt"

puts "Password?"

if encrypt
	p encrypt(gets.chomp)
else
	p decrypt(gets.chomp)
end











