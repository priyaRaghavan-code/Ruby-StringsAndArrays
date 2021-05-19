array_one = [2, 5, 3, 1, 6, 8, 9]
array_two = [4, 2, 7, 6, 10]
answer = []

array_one.each do |one|
    array_two.each  do |two|
        if one == two
            answer.push(one)
        end
    end
end

print answer
