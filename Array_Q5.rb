array_one = [ 2, 5, 3, 1, 6, 8, 9 ]
array_two = [ 4, 2, 7, 6, 10 ]
answer = []

for one in array_one
    for two in array_two
        if one == two
            answer.push(one)
        end
    end
end

print answer
