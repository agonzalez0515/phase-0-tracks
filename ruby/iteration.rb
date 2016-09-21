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

name_age = {'mary' => 20, 'rebecca' => 30, 'john' => 40 }

