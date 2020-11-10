# Дано трехзначное число. Необходимо проверить, образуют ли цифры этого числа возрастающую последовательность.


  puts 'Vvedite 3h znachnoe chislo'
  a = gets.chomp
  if (a.length !=3)
    puts "You must enter 3-digit number."
    exit
  end
  b = a.split(//)
  puts "ETO VOZRASTAUSHAIA POSLEDOVATELNOST!!!!" if b[0].to_i < b[1].to_i < b[2].to_i

