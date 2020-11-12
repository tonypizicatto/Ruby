class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type = 7)
    super(name)
    @motor_type = motor_type
  end

  def name
    @name
  end

  def motor_type
    @motor_type
  end

  def info
    puts "Name: #{name}"
    puts "Motor type: #{motor_type}"
  end
end


boat = PowerBoat
boat = boat.new("Guppy", boat.new(''))

boat.info

#Name: Guppy
#Motor Type: outboard