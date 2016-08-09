# Initiate a hash to store data
client = {}

# Prompt the designer/user for the client's name, age, number of children, decor theme
# Convert any user input to the appropriate data type.
puts "What is your client's name?"
client[:name] = gets.chomp

puts "Their age?"
client[:age] = gets.chomp.to_i

puts "Number of children?"
client[:children] = gets.chomp.to_i

puts "Decor theme?"
client[:decor] = gets.chomp

# Print the hash back out to the screen when the designer has answered all of the questions.
puts client

# Give the user the opportunity to update a key (no need to loop, once is fine). 
puts "Would you like to update a key? Which key would you like to update?"
response = gets.chomp

# Allow user to update their response if necessary
# Store the updated value in the correct type
if response	!= "none"
	puts "Please enter the updated value for '#{response}':"
	if response == ("age" || "children")
		client[response.to_sym] = gets.chomp.to_i
	else
		client[response.to_sym] = gets.chomp
	end
end

# Print the latest version of the hash, and exit the program.
puts client