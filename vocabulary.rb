class Vocabulary

  attr_accessor :locale

  def initialize
    @locale = nil
    @english = {"стол" => 'table', "стул" => 'chair',"клавиатура" => 'keyboard', "экран" => 'screen', "дерево" => 'tree', "мяч" => 'ball', "нога" => 'foot'}
    @english.default = "Sorry, I don't know this word"
    @russian = {"table" => 'стол', "chair" => 'стул', "keyboard" => 'клавиатура', "screen" => 'экран', "tree" => 'дерево', "ball" => 'мяч', "foot" => 'нога'}
    @russian.default = "Sorry, I don't know this word"
  end

  def translate (t_sword = nil)
    if @locale == :en
      puts @english[t_sword]
    elsif @locale == :ru
      puts @russian[t_sword]
    else
      puts "Unknown locale"
    end
  end

end

v = Vocabulary.new
v.translate('стол')
#=> "Unknown locale"

v.locale = :en
#=> :en

v.translate('стол')
#=> "table"

v.locale = :ru
v.translate('tree')
#=> 'дерево'

v.translate('pussy')
#=> "Sorry, I don't know this word"

#**слова которые должен уметь переводить словарь:**
#стол
#стул
#клавиатура
#экран
#дерево
#мяч
#нога