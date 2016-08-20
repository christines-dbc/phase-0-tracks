# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "If you're happy and you know it, yell '#{words}'!!!"
#   end
# end

# p Shout.yell_angrily("You're a wizard")
# p Shout.yelling_happily("I'm a wizard")

module Shout
  def repeat(words)
    p (words + "!! ") * 5
  end

  def louder(words)
    p words.upcase
  end
end

class Seagull
  include Shout
end

class Sealion
  include Shout
end

gull = Seagull.new
gull.repeat("Mine")
gull.louder("hello")

sealion = Sealion.new
sealion.repeat("Arf")
sealion.louder("honk")