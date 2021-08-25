# Write a while loop to print out each number in a sentence, one line at a time. The output should look like the following:
# The number is 3.
# The number is 4.
# The number is 1.
# The number is 2.

numbers = [3, 4, 1, 2]

index = 1
while
  index < 5
    puts "The number is #{numbers[index - 1]}"
    index += 1
end


