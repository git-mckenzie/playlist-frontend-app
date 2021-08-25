print "What word would you like to translate into Igpay Atinlay?...   "

word = gets.chomp.downcase.split(//)

array = []
index = 1
while index < word.length
    array << word[index]
    index = index + 1
end

translated = array.join + word[0]
puts translated.capitalize + "ay"