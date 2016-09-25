
calculations = []

loop do
	puts "please type an equation with 2 numbers and +, -. *, / in the middle of the two"
	equation = gets.chomp.split(' ')

		def calculator (equation)
		
			equation.each { |i| i.to_s}
				if 
					equation[1] == "+"
					puts equation[0].to_i + equation [2].to_i
				elsif equation[1] == "-"
					puts equation[0].to_i - equation [2].to_i
				elsif equation[1] == "*"
					puts equation[0].to_i * equation [2].to_i
				elsif equation[1] == "/"
					puts equation[0].to_i / equation [2].to_i
				end
		end
		
		
		result = calculator(equation)
		break if equation[0] == "done"
		calculations << equation.join('')

end

#puts calculations.each 
puts calculations

=begin
I ran out of time for Questions 5 and 6. I think i was very close in 5. 
I wanted to print each of the array elements for the length of the array.
For the result, I wanted it to print after each calculation but when I tried
it would say no method. I didn't get a chance to debug that part either.



#equation = 1 +2
#equation2 = 5 - 4
#equation3 = 4 * 4
#equation4 = 6 / 2
#
#p calculator(equation)
#p calculator(equation2)
#p calculator(equation3)
#p calculator(equation4)