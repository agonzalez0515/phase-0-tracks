

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

# encrypt pseudocode: 
#	-Get string
#	-advance each letter 1 alphabetically

def decrypt(encrypted_pass)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	for i in 0...encrypted_pass.length
		if encrypted_pass[i] == " "
			next
		else
			encrypted_pass[i] = alphabet[alphabet.index(encrypted_pass[i])-1]
		end
	end
#	puts encrypted_pass
	encrypted_pass
end

#decrpyt pseudocode:
#	-get encrypted string
#	-go back one letter alphabeticall

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe") 

decrypt(encrypt("swordfish"))
# This works because the implicit return of the encrypt method is a string.

#Interface pseudocode:
#	- Ask user if they want to decrypt or encrypt
# 	- Ask for password
# 	- Do encrypt or decrypt depending on first answer
# 	- Print result

puts "Do you want to decrypt on encrypt"
encrypt = gets.chomp.downcase == "encrypt"
puts "Password?"
if encrypt
	p encrypt(gets.chomp)
else
	p decrypt(gets.chomp)
end











