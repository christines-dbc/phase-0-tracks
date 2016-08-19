# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define a method that recieves a string
  # break apart the string into an array
  # take array as a key to a hash
  # set default quantity as the value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create(groceries)
  items = groceries.split
  grocery_list = {}

  items.each do |item|
  grocery_list[item] = 1
  end

  grocery_list

end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add item name and optional quanity to list
  # print the list
# output: grocery list

def add(list, item, quantity)
  list[item] = quantity
  list

end

# Method to remove an item from the list
# input: item
# steps:
  # find the item in the hash
  # remove item
# output: hash

def remove(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input: item name and updated quantity
# steps:
  # find the item in the hash
  # update the quantity
# output: hash

def update(list, item, quantity)
  if list.has_key?(item)
  list[item] = quantity
  else
  puts "That item is not in the list"
  end
  list
end

# Method to print a list and make it look pretty
# input: grocery list
# steps: 
  # print each key and value on its own line
# output: string

def prettify(list)

  list.each do |item, quantity|
  puts "There are #{quantity} #{item} in the list."
  end

end

list = create("")

add(list, "lemonade", 2)
add(list, "tomatoes", 3)
add(list, "onions", 1)
add(list, "ice cream", 4)

remove(list, "lemonade")
update(list, "ice cream", 1)

prettify(list)

# What did you learn about pseudocode from working on this challenge?
# With pseudocode, I learned to be more clear about expectations for input and output

# What are the tradeoffs of using arrays and hashes for this challenge?
# Using arrays wouldn't allow you to store the item and quanity together in the same pair.
# The items and values can be seperate arrays and then paired later into a hash,
# but for this assignment, it made more sense to store them as a hash.

# What does a method return?
# A method returns the last line of the method

# What kind of things can you pass into methods as arguments?
# You can pass arrays, hashes, strings, integers, etc. as well as other methods.

# How can you pass information between methods?
# Call the methods within the method itself, assign a variable to it and pass that through the method
# In the driver code

# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge, I leared how to pass information between methods and I can assign a variable to calling a method.
# The concept is still confusing to me and I need more practice on it as it's new.