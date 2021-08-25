sum = 0
number = 0
index = 0
while index < 5
puts "Please enter a number:"
  number = gets.chomp
  sum = sum.to_f + number.to_f
  index = index + 1
end
mean = sum.to_f / 5.to_f
puts mean