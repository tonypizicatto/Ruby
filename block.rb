a = [1,2,3]
a.each do |perem|
  puts perem + 5
end
res = a.select do |perem2|
  perem2 == 2
end

p res