class Penis
  attr_accessor :dick_size, :circumcision
  def initialize(size)
    @dick_size = size
    @circumcision = false
  end

  def big?
    if @dick_size >= 15
      puts 'Your dick is big!'
    else
      puts 'You are little-penis-man)))'
    end
  end

  def circumcised?
    puts @circumcision
  end

  def lets_circumcision
    if @circumcision == false
      @circumcision = true
      puts 'You are real POTS now!'
    else
      puts 'Your dick too short now'
    end
  end
end