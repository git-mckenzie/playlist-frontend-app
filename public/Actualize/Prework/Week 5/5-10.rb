# Write a function called say_hello that takes in a number, then prints out "Hello!" that many times.

print "Please enter a number between 1 and 100:    "

def say_hello(number)
    @number = gets.chomp

    index = 0
    while index < @number.to_i
        puts "Hello! (#{index + 1})"
        index += 1
    end

end

say_hello(@number)