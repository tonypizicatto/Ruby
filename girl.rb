class Girl

  def initialize(fuck_age)
    @f_a = fuck_age
  end

  def age
    puts @f_a
  end

  def fuckable?
    puts @f_a > 17
  end

end
g = Girl.new(18)

g.age
#=> 18

g.fuckable?
#=> true

g = Girl.new(12)
g.age
#=> 12

g.fuckable?
#false