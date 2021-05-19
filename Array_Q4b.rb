numbers_array = [3, 5, 2, 8, 23, 4, 7, 12]
temp_array = Array.new(numbers_array.length, 0)
target = 5
start_of_array = 0
end_of_array = numbers_array.length-1
numbers_array = numbers_array.sort
print numbers_array

n = numbers_array.length - 1
n.downto(0) do |i|
    if (numbers_array[start_of_array]-target).abs() <= (numbers_array[end_of_array]-target).abs()
        temp_array[i] = numbers_array[end_of_array]
        end_of_array -= 1
    else
        temp_array[i] = numbers_array[start_of_array]
        start_of_array += 1
    end
end

print temp_array


