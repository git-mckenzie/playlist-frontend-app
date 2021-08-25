converter = {      # hash to convert letters in secret code
  "A" => "Z",
  "B" => "Y",
  "C" => "X",
  "D" => "W",
  "E" => "V",
  "F" => "U",
  "G" => "T",
  "H" => "S",
  "I" => "R",
  "J" => "Q",
  "K" => "P",
  "L" => "O",
  "M" => "N",
  "N" => "M",
  "O" => "L",
  "P" => "K",
  "Q" => "J",
  "R" => "I",
  "S" => "H",
  "T" => "G",
  "U" => "F",
  "V" => "E",
  "W" => "D",
  "X" => "C",
  "Y" => "B",
  "Z" => "A"
}

print "Where has the eagle landed... ?   "   # get input
secretword = gets.chomp
decrypted_secretword = secretword.upcase.split(//) # split string into array

newword_array = []
index = 0
while index < decrypted_secretword.length
  letter = decrypted_secretword[index]
  newword_array << converter[letter]  # convert split values with keys
  index = index + 1
end

secret_code = newword_array.join    # concatenate split values into new word
puts "The code is #{secret_code}."