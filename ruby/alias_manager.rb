# def name_swap(full_name)
# 	full_name = full_name.split(" ")
# 	full_name[1] + " " + full_name[0]
# end


def next_letter(name)
	# Take the first and last name and swap them
	name = name.split(" ")
	name = name[1] + " " + name[0]

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

p next_letter("Felicia Torres")



# "Felicia Torres" will become "Vussit Gimodoe"