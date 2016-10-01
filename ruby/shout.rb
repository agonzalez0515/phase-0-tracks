=begin
module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	"yay!" + words + "!!"
  end

end

p Shout.yell_angrily("i hate you")
p Shout.yelling_happily("homework")
=end


module Shout
  
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	"yay!" + words + "!!"
  end

end


class Kids
	include Shout
end

class Parents
	include Shout
end

little_kid = Kids.new
p little_kid.yelling_happily("no homework")
p little_kid.yell_angrily("why?")

mom = Parents.new
p mom.yell_angrily("stop it")
p mom.yelling_happily("i love you")


