class FamilyStrong
  attr_accessor :marriages, :total_babies, :name
  attr_reader :baby_names

  def initialize(name)
    @name = name[:name]
    @total_babies = 0
    @marriages = 0
    @baby_names = []
  end
  def married?
    puts @marriages > 0
  end

  def has_babies?
    puts @total_babies > 0
  end

  def marry(people = nil)
    if people.class == Baby
      puts "Its baby!!!1!!1!"
    elsif @marriages == 1
      puts "She is married now!"
    else
      @marriages = 1
      people.marriages = 1
      puts "#{name} and #{people.name} are married now"
      if @marriages == 1
        people.total_babies += 1
      end
    end
  end

  def divorce(loser)
    if loser.class == Woman && @marriages > 0
      @marriages -= 1
      loser.marriages -= 1
      @total_babies = @total_babies - loser.total_babies
      puts "You divorced!"
    elsif loser.class == Man && @marriages > 0
      @marriages -= 1
      loser.marriages -= 1
      loser.total_babies = loser.total_babies - @total_babies
      puts "You divorced!"
    else
      puts "You are not married"
    end

  end

  def adopt(babyboy=nil)
    if babyboy.class == Baby
      @total_babies += 1
      puts "#{name} adopted #{babyboy.name}"
      @baby_names << babyboy.name
    else
      puts "it's not a baby"
    end
  end

  def babies
    p @baby_names
  end

end

class Woman  < FamilyStrong
  # def initialize(girl_name)
  #   $girl_name = girl_name
  # end

end



class Baby  < FamilyStrong

end
class Man  < FamilyStrong

end

woman = Woman.new(name: "Lola")
baby = Baby.new(name: "Goga")
man = Man.new(name: "Adolf")
man2 = Man.new(name: "Vasya bogach")

woman.name

p woman.name

woman.married?
#=> false

woman.has_babies?
#=> false

puts woman.total_babies
#=> 0

woman.adopt(baby)
#=> "Lola adopted Goga"

woman.has_babies?
#=> true

puts woman.total_babies
#=> 1

woman.babies
#=> ['Goga']

woman.adopt('a')
#=> "it's not a baby"

woman.adopt(123)
#=> "it's not a baby"

man.married?
#=> false

woman.marry(man)
#=> "Lola and Adolf are married now"

man.married?
#=> true
puts man.name
woman.married?
#=> true
woman.marry(baby)

p man2.total_babies
woman.marry(man2)
p man2.total_babies
# man.divorce(woman)
# puts man.total_babies
# puts woman.total_babies
#
# man.divorce(woman)
# p man.marriages
# p woman.marriages

woman.divorce(man)
puts man.total_babies
puts woman.total_babies
p man.marriages
p woman.marriages
man2.marry(woman)