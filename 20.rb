# Даны два массива
# найти совпадающие элементы и вывести их в консоль

a = [1, 7, 'asd', 13]
b = [2,3,4,5,6,7, 'dsa', 'asd']
c = b - a
d = b - c
puts d
# repeat = []
# c.each do |i|
#   if i.include?(i)
#     repeat << i
#   end
# end
# p repeat
# c.detect do |e| c.count(e) > 1
# repeat << e
# end
# p repeat