module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "If you're happy and you know it, yell '#{words}'!!!"
  end
end

p Shout.yell_angrily("You're a wizard")
p Shout.yelling_happily("I'm a wizard")