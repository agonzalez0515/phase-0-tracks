=begin	def happy_birthday
	first = "Captain"
	last = "Jack"
	puts "Happy Birthday!"
	yield(first, last)
end


happy_birthday { |first, last| puts "Wishing you a great birthday, 
#{first} #{last}" }
=end


fav_colors = ["pink", "purple", "blue", "red", "black"]

puts "Favorite Colors:"
p fav_colors


fav_colors.each do |color|
	 puts "My favorite color is #{color}."
end


puts "After .each call:"
p fav_colors


###

fav_colors = ["pink", "purple", "blue", "red", "black"]

puts "Favorite Colors:"
p fav_colors


fav_colors.map! do |color|
	puts color
	color.upcase
	 
end


puts "After .map call:"
p fav_colors





#name_age = {'mary' => 20, 'rebecca' => 30, 'john' => 40 }



