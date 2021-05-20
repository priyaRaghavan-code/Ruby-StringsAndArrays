class StringReverse
  attr_accessor :input_string

  def initialize(input_string)
    @input_string  = input_string
  end

  def string_reverse
      string_array = @input_string.split(" ")
      reversed_string = ""
      string_array.each do |word|
        reversed_string += word.reverse()
        reversed_string += " "
      end
      return reversed_string
  end
end


string_input = StringReverse.new("This is a cat")
puts string_input.string_reverse
