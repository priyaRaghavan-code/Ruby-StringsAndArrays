class LargestDifferenceBetweenTwoNumbers
    
    attr_accessor :input_numbers
    
    def initialize(input_numbers)
        @input_numbers = input_numbers
    end
    
    def find_difference
        max_index = 0
        n = 0
        n.upto(@input_numbers.length-2) do |number|
            max = @input_numbers[max_index] - @input_numbers[max_index+1]
            if @input_numbers[number] - @input_numbers[number+1] >= max
                max_index = number
            end
        end
        print ("Two numbers with biggest difference are " + @input_numbers[max_index].to_s + " and " + @input_numbers[max_index+1].to_s + " Their difference is "+ (@input_numbers[max_index]-@input_numbers[max_index+1]).to_s)
    end
end

input_array = LargestDifferenceBetweenTwoNumbers.new([9, 20, 16, 6, 5, 9, 21, 8, 14, 5, 12, 21, 9])
input_array.find_difference

