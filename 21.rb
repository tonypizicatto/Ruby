
# отсортировать массив в обратном порядке (от большего к меньшему) оставив
# только уникальные элементы

a = [4,2,34, 6,1,8,123,654,765,34,1256,32,12,64,65,9, 1, 6, 34]
b = a.uniq
c = b.sort {|a,b| b <=> a}
p c
