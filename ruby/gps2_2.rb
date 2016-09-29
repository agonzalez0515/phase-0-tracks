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
	grocery_hash[new_item] = quantity
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
	grocery_hash[key] = value
	p grocery_hash
end

update_quantity grocery_hash, "ice_cream", 1


def print_list grocery_hash
	grocery_hash.each do |item, quantity|
		puts "You have #{quantity} #{item}"
	end
end

print_list grocery_hash




