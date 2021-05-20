class SortByArea
  attr_accessor :input_array

  def initialize(input_array)
    @input_array = input_array
  end

  def sort_by_area
    print @input_array.sort { |a, b| (b[0] * b[1]) - (a[0] * a[1]) }
  end
end

input_numbers = SortByArea.new([[6, 4], [8, 2] , [7, 3] , [4, 4] , [8, 4] , [9, 1] , [7, 2] , [11, 1]])
input_numbers.sort_by_area
