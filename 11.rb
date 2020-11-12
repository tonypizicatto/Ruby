class Cup

  def initialize
    @razbitast_krujki = false
  end

  def broken?
    puts @razbitaya_krujka != false
  end

  def brake
    if @razbitast_krujki == false
        puts 'broken'
        @razbitast_krujki = true
    else
      puts 'cup broken earlier'
    end
  end

end




cup = Cup.new
cup.broken?
#=> false
cup.brake
#=> "broken"
cup.broken?
#=> true















