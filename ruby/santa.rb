class Santa
	attr_accessor :gender, :age
	attr_reader :ethnicity

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end

	def about
		puts "Gender: #{@gender}, Ethnicity: #{@ethnicity}, Age: #{@age}"
	end
end

santas = []
genders = ["gender non-conforming", "agender", "female", "gender fluid"]
ethnicities = ["korean", "irish", "biracial", "asian"]

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
	puts "The new santa is #{genders[i]} and #{ethnicities[i].capitalize}."
end

p Santa.new("gender non-conforming", "thai/chinese/burmese").celebrate_birthday
p Santa.new("female", "korean").get_mad_at("Vixen")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

99.times do
	santas << Santa.new(example_genders.sample, example_ethnicities.sample).about
end