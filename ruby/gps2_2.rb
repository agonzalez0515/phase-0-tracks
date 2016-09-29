# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # list items 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with key for the item and value for the quantity

# Method to add an item to a list
# input: the hash list and the item name and optional quantity
# steps: 
 	#push new items into list
# output: updated hash with new items and quantities

# Method to remove an item from the list
# input: the hash list
# steps: find item I want to remove
	#remove it with a method
# output: updated hash

# Method to update the quantity of an item
# input: the hash list
# steps: find key we want to update, and change the value
# output: updated hash

# Method to print a list and make it look pretty
# input: the hash list
# steps: print as a list 
# output: strings with everything listed


#Method to create a list

def create_list items
	list = {}
	grocery_list = items.split(" ")

	grocery_list.each do |item|
		list[item] = 1
	end
	p list
end

grocery_hash = create_list("lemonade tomatoes onions ice_cream")

def add_an_item new_item,quantity, grocery_hash
		if grocery_hash.include? new_item
			grocery_hash[new_item] += quantity
		else
			grocery_hash[new_item] = quantity
		end
	p grocery_hash
end

add_an_item "lemonade", 2, grocery_hash
add_an_item "tomatoes", 3, grocery_hash
add_an_item "onions", 1, grocery_hash
add_an_item "ice_cream", 4, grocery_hash

def remove_an_item grocery_hash, delete_item
	grocery_hash.delete(delete_item)
	p grocery_hash
end

remove_an_item grocery_hash, "lemonade"


def update_quantity grocery_hash, key, value
		if grocery_hash.include? key
			grocery_hash[key] += value
		else
			grocery_hash[key] = value
		end
	p grocery_hash
end

update_quantity grocery_hash, "ice_cream", 1


def print_list grocery_hash
	grocery_hash.each do |item, quantity|
		puts "You have #{quantity} #{item}"
	end
end

add_an_item "grapes", 5, grocery_hash

print_list grocery_hash

=begin

What did you learn about pseudocode from working on this challenge?
I did not pseudocode very thoroughly because it feels repetative but I really need to
change that. It helps to have the steps broken down or else you don't know where to start.

What are the tradeoffs of using arrays and hashes for this challenge?
I used a hash from the beginning because I knew I had to add values to each item. If I 
has used an array, I would have needed to turn it into a hash later so it just saved me
step. It's good to think a couple of steps ahead.  An array would have been easier to use
because you don't need to worry about having a key AND a value, but the hash just 
better described my list.

What does a method return?
A method returns the parameter you feed it after it's gone through each step. The return
is the last thing that happened in the method. 

What kind of things can you pass into methods as arguments?
Pretty much any object (strings, integers), including hashes and arrays.

How can you pass information between methods?
After a method returns something, you then pass that as an argument into the next method.
My first method created a hash which then I used as my parameter for the rest of my 
methods to modify.

What concepts were solidified in this challenge, and what concepts are still confusing?	
This challenge was exactly what I needed in terms of methods. I was having a hard
time with parameters and how to use arrays as a parameter.  I feel a lot more clear. 
It also was great to see how one thing is affected by multiple methods.  

I'm still struggling with "creating" items, like the list above. My default is to think
about driver code and using gets.chomp.

=end

