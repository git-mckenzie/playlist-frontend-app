# Create a program that says "I'm thinking of a number between 1 and 100", and asks the user to guess which number the computer is thinking of. The correct answer is 33. So, if the user guesses 33, the computer should say, "You win!". If the number is less than 33, it should say, "Too low." If the number is greater than 33, it should say, "Too high."

puts "I'm thinking of a number betweeen 1 and 100.  What number am I thinking of?"

number = gets.chomp

if number.to_i == 33
    puts "You win!"
elsif number.to_i > 33
    puts "Too high."
else
    puts "Too low."
end