require 'date'
class SortByDate
  attr_accessor :input_array
  
  def initialize(input_array)
    @input_array = input_array
  end
  
  def sort_by_date
    print @input_array.sort_by { |input| Date.parse(input) }
  end
end

array_date_input = SortByDate.new(["06-09-2016","08-07-2016","07-10-2017"])
array_date_input.sort_by_date
