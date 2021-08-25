# Write code to ask the user for a day of the week (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday). If the user enters Monday, print out the message "Sounds like someone has a case of the Mondays!". For any other weekday, print out the message "Time to make the Donuts!". For any weekend day, print out the message "It's the weekend. Enjoy it.". If the user did not enter a valid day, print out the message "That does not compute. Try again!"

puts "Please type in a day of the week (ie Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday):"

day = gets.chomp

if day == "Monday"
    puts "Sounds like someone has a case of the Mondays!"
elsif day == "Tuesday" || day == "Wednesday" || day == "Thursday" || day == "Friday"
    puts "Time to make the Donuts!"
elsif day == "Saturday" || day == "Sunday"
    puts "It's the weekend. Enjoy it."
else
    puts "That does not compute. Try again!"
end