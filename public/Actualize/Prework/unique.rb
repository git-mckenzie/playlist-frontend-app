numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]

array = []
index = 0
array << numbers[0]

while index < numbers.length - 1
    if numbers[index] == numbers[index + 1]
      index += 1
    else
      array << numbers[index + 1]
      index += 1
    end
end

p array