# def name_swap(full_name)
# 	full_name = full_name.split(" ")
# 	full_name[1] + " " + full_name[0]
# end


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
received_name = ""

loop do
	puts "What is your name?"
	received_name = gets.chomp

	if received_name == "quit"
		break
	else
	spy_name = next_letter(received_name)
	spy_hash = {
		received_name.to_sym => spy_name
	}
	end
end

# "#{key}'s spy name is #{value}"
p spy_hash