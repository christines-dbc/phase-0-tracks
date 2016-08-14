def next_letter(name)
	# Take the first and last name and swap them
	name = name.split(" ")
	name = (name[1] + " " + name[0])

	# Create vowel and consonant variables
	vowels = "aeiou".chars
	consonants = "bcdfghjklmnpqrstvwxyz".chars

	# Loop through each letter and change them
	name_array = name.downcase.chars
	name_array.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "z"
			letter = "b"
		elsif letter == "u"
			letter = "a"
		elsif vowels.include? letter
			letter = vowels[vowels.index(letter) + 1]
		else consonants.include? letter
			letter = consonants[consonants.index(letter) + 1]
		end
	end

	# Join all the letters
	# Split them by the ' '
	reversed_name = name_array.join.split(" ")
	# Capitalize the first letter in the array and join again
	reversed_name.map(&:capitalize).join(" ")
end

spy_hash = {}

# User interface

# Ask for their name until the user quits
loop do
	puts "What is your name?"
	received_name = gets.chomp

	if received_name == "quit"
		break
	else
		spy_name = next_letter(received_name)
	end
	# Add the spy name to the recieved name's key
	spy_hash[received_name.to_sym] = spy_name
	
end

# Iterate through each of the spy names
spy_hash.each { |real_name, spy_name| puts "#{real_name}'s spy name is #{spy_name}."}