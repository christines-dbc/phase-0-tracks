puts "How many employees will be processed?"
count = gets.chomp.to_i

count.times do
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	stated_age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	age = true
		if 2016 - year_born == stated_age
			age = true
		else
			age = false
		end

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	want_garlic = gets.chomp

		if want_garlic == "yes"
			want_garlic = true
		else
			want_garlic = false
		end

	puts "Would you like to enroll in the company’s health insurance?"
	want_insurance = gets.chomp

		if want_insurance == "yes"
			want_insurance = true
		else
			want_insurance = false
		end

	result = "Results inconclusive"
	# If the employee got their age right, 
	# 	and is willing to eat garlic bread 
	# 	or sign up for insurance, 
	# 		the result is “Probably not a vampire.”

	if age && want_garlic && want_insurance
		result = "Probably not a vampire."
	end

	# If the employee got their age wrong, 
	# 	and hates garlic bread 
	# 	or waives insurance, 
	# 		the result is “Probably a vampire.”

	if !age && ( !want_garlic || !want_insurance)
		result = "Probably a vampire"
	end

	# If the employee got their age wrong, hates garlic bread, 
	# 	and doesn’t want insurance, 
	# 		the result is “Almost certainly a vampire.”

	if !age && ( !want_garlic && !want_insurance)
		result = "Almost certainly a vampire"
	end

	# Even if the employee is an amazing liar otherwise, 
	# 	anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, 
	# 	because come on. In that case, you should print “Definitely a vampire.”
	# 		Otherwise, print “Results inconclusive.”

	if name == "Drake Cula"
		result = "Definitely a vampire"
	end

	if name == "Tu Fang"
		result = "Definitely a vampire"
	end

	puts result
end