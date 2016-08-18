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

  def initialize(name)
    @name = name
    @age = rand(0..150)
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

    def about
    puts "#{name} is #{age} #{age > 1 ? 'years' : 'year'} old."
    puts "#{name} is #{danger ? 'not in' : 'in'} danger."
  end

end

morty = Tortise.new("Morty")
morty.lay_eggs
morty.about
morty.hide("raven")
morty.walk_slow