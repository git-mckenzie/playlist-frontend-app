numbers = [-333, -4, 3, 6, 8, 12, 56, 93, 111, 156, 418]
puts "
Your starting numbers are #{numbers}.

What number would you like to insert?

"
numbers << gets.chomp.to_i
swapped = true

# numbers.length.times do
while swapped
  swapped = false
  index = 0
  while index < numbers.length - 1
    if numbers[index] > numbers[index+1]
      temp = numbers[index]                  
      numbers[index] = numbers[index + 1]    
      numbers[index + 1] = temp   
      swapped = true           
    end
    index += 1
  end
end

puts "
The new set with your number inserted is #{numbers}.

"