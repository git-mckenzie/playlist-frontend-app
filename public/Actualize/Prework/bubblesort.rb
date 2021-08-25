numbers = [156, 418, 56, 6, 93, -333, -4, 111, 12, 3, 8]
puts "
Your starting numbers are #{numbers}.

"
numbers.length.times do
  index = 0
  while index < numbers.length - 1
    if numbers[index] > numbers[index + 1]
      temp = numbers[index]                  
      numbers[index] = numbers[index + 1]    
      numbers[index + 1] = temp              
    end
    index += 1
  end
end
puts "
The sorted numbers are #{numbers}.

"