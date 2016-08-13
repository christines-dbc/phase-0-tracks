def name_swap(full_name)
	full_name = full_name.split(" ")
	full_name[1] + " " + full_name[0]
end


def next_letter(name)
	# Create vowel and consonant variables
	vowels = "aeiou".chars
	consonants = "bcdfghjklmnpqrstvwxyz".chars

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
end

p next_letter("Felicia Torres")



# "Felicia Torres" will become "Vussit Gimodoe"