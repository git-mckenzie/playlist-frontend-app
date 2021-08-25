letter_groups = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]

new_array = []
index = 0

while index < letter_groups.length
    index1 = 0
    while index1 < letter_groups[index].length
        new_array << letter_groups[index][index1]
    index1 = index1 + 1
    end
    index = index + 1
end

p new_array