class CommonElementInTwoArray
    attr_accessor :array_one, :array_two
    
    def initialize(array_one,array_two)
        @array_one = array_one
        @array_two = array_two
    end
    
    def find_common_element
        common_element = []
        @array_one.each do |one|
            @array_two.each  do |two|
                if one == two
                    common_element.push(one)
                end
            end
        end
        print common_element
    end
end

input_arrays = CommonElementInTwoArray.new([2, 5, 3, 1, 6, 8, 9], [4, 2, 7, 6, 10])
input_arrays.find_common_element



