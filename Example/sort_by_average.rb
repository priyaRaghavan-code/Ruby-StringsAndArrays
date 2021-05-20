class SortByAverage
  attr_accessor :input_array

  def initialize(input_array)
    @input_array = input_array
  end

  def sort_by_average
    @input_array.sort_by! { |input| input[1].div(input[2]) }
    @input_array.each { |name| print name[0]+" " }
  end
end

input_array_of_score = SortByAverage.new([['Ajay',10000,400 ], ['Vijay',6000,300], ['Ram',7000,200], ['Shyam',7700,350]])
input_array_of_score.sort_by_average


