class Pussy
  attr_accessor :total_fucks

  def fuck(num = 1)
    if @total_fucks.to_i > 0 && @total_fucks.to_i <= 10
      @total_fucks += 1
    else
      @total_fucks = 0
      @total_fucks += 1
    end

    if num > 0 && @total_fucks.to_i < 10
      puts "Oh yeahhh"
      num -= 1
      fuck(num)
    end

    if @total_fucks.to_i >= 11
      puts 'I don\'t want to fuck anymore. We\'ve fucked 10 times already'
    end
  end

  def creampie
    if @total_fucks.to_i > 0 && @total_fucks != 10
      puts 'You can not cum inside. Cum on my ass!'
    elsif @total_fucks.to_i >= 10
      puts 'Go away, bastard!'
    else @total_fucks.to_i == 0
      puts 'You not inside me!'
    end
  end

  def go_to_shower
    puts 'I\'m clean and ready to fuck again'
    @total_fucks = 0
  end
end

pussy = Pussy.new
pussy = Pussy.new
pussy.fuck
pussy.fuck(3)
puts pussy.total_fucks
pussy.creampie
pussy.fuck(6)
pussy.fuck
pussy.go_to_shower
pussy.fuck
