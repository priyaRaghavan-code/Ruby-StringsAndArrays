class SortByWidth
  attr_accessor :input_array
  
  def initialize(input_array)
    @input_array = input_array
  end
  
  def sort_by_width
    print @input_array.sort { |a, b| (a[:width] * a[:height]) - (b[:width] * b[:height]) }
  end
end

input_hash_array =  SortByWidth.new([{ :width => 3, :height => 2}, { :width => 1, :height => 1}, { :width => 1, :height => 2 }])
input_hash_array.sort_by_width