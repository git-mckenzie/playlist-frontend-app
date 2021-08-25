precede = 0
current = 1

101.times do
    puts precede
    temp = precede
    precede = current
    current = temp + precede
end