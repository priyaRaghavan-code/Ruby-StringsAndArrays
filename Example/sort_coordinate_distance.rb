class SortCoordinates
  attr_accessor :input_array, :point

  def initialize(input_array,point)
    @input_array = input_array
    @point = point
  end

  def sort_coordintes_by_distance
    print @input_array.sort! { |input| Math.sqrt(((@point[0]-input[0])**2)+((@point[1]-input[1])**2)) }
  end
end

input_array = SortCoordinates.new([[2,1], [2, 2], [3,2], [1,3]],[2, 2])
input_array.sort_coordintes_by_distance


