class Kid
  attr_accessor :toys

  def initialize
    @toys = []
  end

  def has_toys?
    puts @toys.any?
  end

  def show_toy_names
    puts @toys
  end

  def take_all_toys
    @toys.clear
  end
end

kid = Kid.new
kid.has_toys?
#=> false

kid.toys << 'Car'
kid.toys << 'Elephant'
kid.toys << 'Frog'

kid.has_toys?
#=> true

kid.show_toy_names
#=> Car
#Elephant
#Frog

kid.take_all_toys

kid.has_toys?
#=> false
