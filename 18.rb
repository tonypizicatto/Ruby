m1 = []
m2 = []
print ("Введите pervoe shislo v massiv 1:")
m1 << gets.to_i
print ("Введите vtoroe shislo v massiv 1:")
m1 << gets.to_i
print ("Введите tretee shislo v massiv 1:")
m1 << gets.to_i
print ("Введите pervoe shislo v massiv 2:")
m2 << gets.to_i
print ("Введите vtoroe shislo v massiv 2:")
m2 << gets.to_i
print ("Введите tretee shislo v massiv 2:")
m2 << gets.to_i

puts 'Unikalnie chisla mejdy 1 i 2'
puts m1 - m2
puts 'Unikalnie chisla mejdy  2 i 1'
puts m2 - m1