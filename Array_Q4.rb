input_array = [ [2,1], [2, 2], [3,2], [1,3] ]
point = [2, 2]
# print input_array.sort { |a, b| (Integer.sqrt((point[1] - point[0]) ^ 2) - ((a[1] - a[0]) ^ 2))) - (Integer.sqrt((point[1] - point[0]) ^ 2) - ((b[1] - b[0]) ^ 2))) }
print input_array.sort { |a, b| Integer.sqrt(point[1] - point[0] ** 2 - a[1] - a[0] ** 2) - Integer.sqrt(point[1] - point[0] ** 2) - b[1] - b[0]) ** 2) }

