class Enemy
  attr_accessor :level
  def initialize(level)
    @level = level[:level]
  end
end

class Warrior
  attr_accessor :level, :hp, :winnings, :draws, :losses
  def initialize(level)
    @level = level[:level]
    @hp = 100
    @winnings = 0
    @draws = 0
    @losses = 0
  end

  def fight(hostile)
    if hostile.class  == Enemy
      if hostile.level < @level
        puts 'You won!'
        @winnings += 1
      elsif hostile.level == @level
        puts 'Draw!'
        @draws += 1
      else
        puts 'You lost'
        @losses += 1
      end
    end
  end
end




warrior = Warrior.new(level: 1)
puts warrior.hp
#=> 100
puts warrior.level
#=> 1
enemy = Enemy.new(level: 0)
puts enemy.level
warrior.fight(enemy)
#=> "You won!"
enemy_1 = Enemy.new(level: 1)
warrior.fight(enemy_1)
#=> "Draw!"
enemy_2 = Enemy.new(level: 2)
warrior.fight(enemy_2)
#=> "You lost"
puts warrior.winnings
#=> 1
puts warrior.draws
#=> 1
puts warrior.losses
#=> 1