# Идет k-я секунда года.
# Необходимо определить сколько полных месяцев и полных недель осталось
# до конца года.

abs = 31536000
s = 60
puts 'Kakaya sekunda goda?'
k = gets.to_i
day = ( ( (abs - k) / s) / s) / 24
months = day / 30
weeks = day / 7
puts "Ostalos projit do konca goda #{months} mesiacev ili #{weeks} nedel!"