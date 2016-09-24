require 'pry'

def search(array, int)
	index = 0
	while index < array.length
		if array[index] == int
			return array[index] - 1
		else
			nil
		end
		index += 1
	end
end

def fib(num)
	fib_array = [0, 1]
	start = num - 2
	while (start) > 0
		fib_array << fib_array[-2] + fib_array[-1]
		start -= 1
	end
	fib_array
end

def sort(original_array)
	# sorted_array = [] # Initialize sorted_array
	# sorted_array << original_array.shift # Push the first element in 'original_array' to 'sorted_array'

	index = 0
	original_array.each do |orig_num|
		index = 0
		while index < original_array.length
			if orig_num < sorted_array[index]
				sorted_array.insert(index, orig_num)
			else
				sorted_array << orig_num
			end 
			index += 1
		end
	end

	sorted_array
	# original_array.each do |num2| # Iterate through original_array
	# 	sorted_array.each do |num1| # Iterate through sorted_array
	# 		if num1 < num2 # If original_array element is less than sorted_array element
	# 			sorted_array.insert(sorted_array.index(num2), num1) # insert number at index point of sorted_array iteration
	# 		else # Otherwise
	# 			sorted_array << num1 # Place original_array at the end of sorted_array
	# 		end
	# 	end
	# end		
end

a1 = [1, 5, 3, 9, 4, 6]
p sort(a1)

# p fib(100)[99]

# arr = [1,2,3,4]
# p search(arr, 3)
# p search(arr, 5)