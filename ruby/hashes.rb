# Prompt the designer/user for the client's name, age, number of children, decor theme
# Convert any user input to the appropriate data type.
client = {}
puts "What is your client's name?"
client[:name] = gets.chomp

puts "Their age?"
client[:age] = gets.chomp.to_i

puts "Number of children?"
client[:children] = gets.chomp.to_i

puts "Decor theme?"
client[:decor] = gets.chomp

# Print the hash back out to the screen when the designer has answered all of the questions.
p client


# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.
