class Man
  attr_accessor :times_fucked

  def fuck_with_strapon
    puts 'fucked'
    @times_fucked = @times_fucked.to_i + 1
  end

  def gay?
    if @times_fucked.to_i < 2
      puts 'No'
    else
      puts 'Yes'
    end
  end
end



man = Man.new

puts man.times_fucked
#=> 1

man.gay?
#=> "No"

man.fuck_with_strapon
#=> "fucked"

man.gay?
#=> "Yes"
puts man.times_fucked

man.fuck_with_strapon
man.fuck_with_strapon
man.gay?
