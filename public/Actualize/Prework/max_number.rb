number_array =[]
number_array_index = 0
while number_array_index < 5
puts "Please enter a number:"
  number = gets.chomp
  number_array << number.to_i
  p number_array
  number_array_index = number_array_index + 1
end

compare_index = 1                                                 
while compare_index < number_array.length                                               
  if number_array[0].to_i > number_array[compare_index].to_i      
    maximum = number_array[0].to_i                          
  else                                                     
    maximum = number_array[compare_index].to_i   
  end    
  compare_index = compare_index + 1                                      
end

puts "Your highest number is #{maximum}"