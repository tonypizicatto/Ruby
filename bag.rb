class Bag
  #peremennie
  attr_accessor :color, :height, :weight, :size, :style,
                :_odet, :_sniat, :napolnen, :pust, :pochichen, :grazniy, :otkrit, :zakrit, :total_odevaniy
#metod
  def odet
    if @_odet == true
      puts "Rukzak yje odet!!!!!1!1"
    elsif @_odet == false && @total_odevaniy > 2
      puts 'Zaebalzya'
    else
      @_odet = true
      @_sniat = false
      puts "Rukzak seichas odet #{@_odet}"
      puts "Rukzak seichas sniat #{@_sniat}"
      if @total_odevaniy.to_i > 0
        @total_odevaniy += 1
      else
        @total_odevaniy = 0
        @total_odevaniy += 1
      end
    end
  end


  #metod
  def sniat
    if @_odet
      @_sniat = true
      @_odet = false
      puts "Rukzak seychas sniat #{@_sniat}"
      puts "Rukzak seychas odet #{@_odet}"

    else
      @_sniat == true
      puts "Rukzak itak sniat dyrila!!1!1"
    end
  end

  #metod
  def napolnit
    @napolnen = true
    @pust = false
  end

  #metod
  def clean
    @pochichen = true
    @grazniy = false
  end
#metod
  def open
    @otkrit = true
    @zakrit = false
  end
#metod
  def close
    @zakrit = true
    @otkrit = false
  end
end

a = Bag.new
a.odet
a.odet
a.sniat
a.sniat
a.sniat
a.odet
a.sniat
a.odet
a.sniat
a.odet
puts a.total_odevaniy
