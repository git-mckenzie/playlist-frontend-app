puts "

To learn your fortune, please tell me your favorite number:

"
number = gets.chomp

if number.to_i < 50
    puts "
    
    #{number}??? Your problem just got bigger.  Think, what have you done.
    
    
    "
elsif
    number.to_i >= 50 && number.to_i <= 100
    puts "
    
    #{number}!!  If we are all worms, try to be a glow worm.
    
    
    "
else
    puts "
    
    Hmmm...  #{number}...   Ignore previous cookie.
    
    
    "
end