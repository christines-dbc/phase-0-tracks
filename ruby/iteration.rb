def meals
	puts "Good Morning!"
	meal = "breakfast"
	yield(meal)
	puts "I had a smoothie"
end

meals { |meal| puts "What did you have for #{meal}?"}

smoothie = ["banana", "cashew milk", "strawberries"]

common_traits = {"dog" => "loyal", "cat" => "obnoxious", "parrot" => "noisy"}

puts smoothie

smoothie.each do |ingredient|
	puts ingredient
end

puts smoothie

puts common_traits

common_traits.each do |pet, trait|
	puts "A #{pet} is #{trait}."
end

puts common_traits

puts smoothie

smoothie.map! do |ingredient|
	ingredient.upcase
end

puts smoothie