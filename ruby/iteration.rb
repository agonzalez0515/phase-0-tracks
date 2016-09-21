#Our own method

	def happy_birthday
		first = "Captain"
		last = "Jack"
		puts "Happy Birthday!"
		yield(first, last)
	end


	happy_birthday { |first, last| puts "Wishing you a great birthday, 
	#{first} #{last}" }

####

#Release 1

#This is the favorite color array
	fav_colors = ["pink", "purple", "blue", "red", "black"]

	puts "Favorite Colors:"
	p fav_colors


#iterate through the array with .each
	fav_colors.each do |color|
	 	puts "My favorite color is #{color}."
	end


	puts "After .each call:"
	p fav_colors


#iterate through the array with .map!
	fav_colors = ["pink", "purple", "blue", "red", "black"]

	puts "Favorite Colors:"
	p fav_colors

#iterate through the array with .map!
	fav_colors.map! do |color|
		puts color
		color.upcase
	 
	end
#Can also be written as fav_colors.map! {|color| color.upcase}

	puts "After .map call:"
	p fav_colors


#This is the delete method for the array
	fav_colors.delete_if {|color| color.length < 5}
	p fav_colors


#This is the keep method for the array
	fav_colors.keep_if {|color| color.length == 4}
	p fav_colors

#This is the reject method for the array
	fav_colors.reject! {|color| color.length < 5}
	p fav_colors


#This is the take while method
	new_colors = fav_colors.drop_while {|color| color.length < 4}





#This is the hash

name_age = {'mary' => 20, 'rebecca' => 30, 'john' => 40 }
puts "Original data:"
p name_age



#This is the each method for the hash
name_age.each do |name, age|
	puts "#{name} is #{age} years old!"
end

puts "After .each call:"
p name_age


#This is the delete method for the hash
name_age.delete_if {|name, age| age < 35}
p name_age


#This is the keep method for the hash
name_age.keep_if {|name, age| name.length == 4}
p name_age


#This is the reject method for the hash
name_age.reject! {|name, age| name.length == 4}
p name_age


