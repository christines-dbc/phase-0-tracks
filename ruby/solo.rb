# SPECIES ------------------------
# Tortise

# CHARACTERISTICS ----------------
# Shell
# Legs: 4
# Lifespan: up to 150 years
# Brain size: small
# Diet: Herbivore

# BEHAVIOR -----------------------
# Walk slowly
# Can lay between 1 to 30 eggs
# Hide in shell

class Tortise
  attr_accessor :danger
  attr_reader :speed, :age, :name

  def initialize(name, age)
    @name = name
    @age = age
    @speed = rand(1..5)
    @danger = false
  end

  def walk_slow
    puts "Walking along at #{speed} mph.".split(" ").join("...")
  end

  def lay_eggs
    puts "#{name} has dug a hole."
    puts "#{rand(1..30)} eggs have been laid inside the hole!"
    puts "#{name} is now burying the eggs."
  end

  def hide(animal)
    predators = ["raven", "gila monster", "badger", "coyote", "roadrunner", "fire ant"]
    if predators.include?(animal)
      @danger = true
      puts "Ahh! #{name} is hiding in their shell!"
    else
      puts "Eh.. #{name} is too lazy.."
    end
  end

end

puts "Hello! Welcome to the Tortise Maker 3000!"
puts "How many tortises would you like to make?"
count = gets.chomp.to_i

tortise_array = []

count.times do
  puts "What would you like to name this tortise?"
  name = gets.chomp.capitalize

  puts "How old is #{name}?"
  age = gets.chomp.to_i

  tortise_array << Tortise.new(name, age)
end

tortise_array.each do |tortise|
  puts "#{tortise.name} is #{tortise.age} #{tortise.age > 1 ? 'years' : 'year'} old."
end