# WRITE: Write a function that takes in an array and uses a while loop to return an array that has all those values doubled. Run the function with the array [5, 10, 15, 4, 9] and print the result. The output should be: [10, 20, 30, 8, 18]

array = [5, 10, 15, 4, 9]
newarray = []
index = 0

while
    index < 5
    newarray << array[index] * 2
    index = index + 1
end

p newarray