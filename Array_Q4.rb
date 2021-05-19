input_array = [[2,1], [2, 2], [3,2], [1,3]]
point = [2, 2]

print input_array.sort! { |input| Math.sqrt(((point[0]-input[0])**2)+((point[1]-input[1])**2)) }

