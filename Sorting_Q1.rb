input_array = [  [6, 4] , [8, 2] , [7, 3] , [4, 4] , [8, 4] , [9, 1] , [7, 2] , [11, 1]  ]
print input_array.sort { |a, b| (b[0] * b[1]) - (a[0] * a[1])}