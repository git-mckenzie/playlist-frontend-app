words = []
10.times do
  print "Enter a word: "
  words << gets.chomp.downcase
end
frequencies = {}
index = 0
while index < words.length
  word = words[index]
  if frequencies[word] == nil
    frequencies[word] = 1
  else
    frequencies[word] = frequencies[word] + 1
  end
  index = index + 1
end
max_word = ""
max_frequency = 0
index = 0
while index < words.length
  word = words[index]
  if frequencies[word] > max_frequency
    max_frequency = frequencies[word]
    max_word = word
  end
  index = index + 1
end
puts "\"#{max_word.capitalize}\" was your most common word. It appeared #{max_frequency} times!"