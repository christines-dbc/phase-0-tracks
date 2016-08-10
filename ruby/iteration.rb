def meals
	puts "Good Morning!"
	meal = "breakfast"
	yield(meal)
	puts "I had a smoothie"
end

meals { |meal| puts "What did you have for #{meal}?"}