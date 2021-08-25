# Create a program that asks the user to enter 5 numbers. Then, tell the user the median number. The definition of a median number is found here.

# Bonus: Make your code work with any size array. This is harder than the problem above, since the definition of median is different when there are an even or odd amount of numbers. If you want, you can use the integer .even? and .odd? methods to help solve this problem.

# ask for input
# create array
# add numbers
# number of things in array
# if even, median average of n + average+1 
# else odd, median is n/2+.5
# print median

number_array =[]
index = 0
while index < 5
puts "Please enter a number:"
  number = gets.chomp
  number_array << number
  index = index + 1
end
puts "
The median of these numbers is #{number_array[2]}.

"