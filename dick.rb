class Dick

  attr_accessor :length, :total_jerks, :fast_jerks, :slow_jerks, :total_cums

  def big?
    if @length == 0
      puts "I don't know"
    elsif @length <= 14
      puts 'false'
    else
      puts 'true'
    end
  end

  def initialize
    @length = 0
    @slow_jerks = 0
    @fast_jerks = 0
    @total_jerks = 0
    @total_cums = 0
  end

  def jerk(drochka = nil)
    if drochka == :slow
      puts "Doing slow jerking"
      @slow_jerks += 1
      @total_jerks += 1
    elsif drochka == :fast
      puts "Jerking with fast speed!!!!!"
      @fast_jerks += 1
      @total_jerks += 1
    else
      puts "Fast or slow?"
    end
  end

  def cum (koncini = nil)
    if koncini == :floor
      puts 'Cumming on the floor!'
      @total_cums += 1
    elsif koncini == :table
      puts 'Cumming on table'
      @total_cums += 1
    else
      puts 'Your dick is too weak!'
    end
  end

  def total_jerks
    puts "#{@slow_jerks} slow jerk"
    puts "#{@fast_jerks} fast jerks"
  end

  def total_cums
    puts @total_cums
  end

end


d = Dick.new

d.big?
#=> "I don't know"

d.length = 14
#=> 14

d.big?
#=> false

d.length = 15
#=> 15

d.big?
#=> true

d.cum
#=> "Your dick is too weak!"

d.jerk
#=> "Fast or slow?"

d.jerk(:slow)
#=> "Doing slow jerking"

d.cum(:floor)
#=> "Cumming on the floor!"

d.jerk(:fast)
#=> "Jerking with fast speed!!!!!"

d.jerk(:fast)
#=> "Jerking with fast speed!!!!!"

d.cum(:table)
#=> "Cumming on table"

d.total_jerks
#=> "1 slow jerk"
#"2 fast jerks"

d.total_cums
#=> 2

