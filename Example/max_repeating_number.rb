class MaximumRepeatingNumber
    attr_accessor :input_numbers

    def initialize(input_numbers)
        @input_numbers = input_numbers
    end

    def find_maximum_repeating_number
        @input_numbers.inject({}) { |h,v| 
           h[v] = @input_numbers.count(v)
           h
       }
    end

    def print_maximum_repeating_number
      max_repeating_number = @input_numbers.sort_by {|k,v| -v}.to_h
      puts ("Number " + max_repeating_number.keys[0].to_s + " is repeating " + max_repeating_number.values[0].to_s + " times")
    end

end

input_array_of_numbers = MaximumRepeatingNumber.new([9, 5, 8, 6, 5, 4, 27, 6, 32, 5, 2, 11, 27, 1])
max_repeating_num = input_array_of_numbers.find_maximum_repeating_number
pass_number_to_print  = MaximumRepeatingNumber.new(max_repeating_num)
pass_number_to_print.print_maximum_repeating_number

