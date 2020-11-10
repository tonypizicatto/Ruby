class Pussy

  attr_accessor :total_fucks

  def fuck (num = 1)
    if num > 0
    puts "Oh yeahhh"
    num -= 1
    fuck(num)
      if @total_fucks.to_i > 0
         @total_fucks += 1
      else
      @total_fucks = 0
      @total_fucks += 1
      end
    end
  end

  #def total_fucks
  # puts @total_fucks
  #end

  #def creampie

  #end

  #def go_to_shower

  #end
end

#      if @total_fucks.to_i > 0
#         @total_fucks += 1
#       else
#         @total_fucks = 0
#         @total_fucks += 1
#       end
