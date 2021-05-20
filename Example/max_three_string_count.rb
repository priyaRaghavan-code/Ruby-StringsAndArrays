class ThreeFrequentWords
    attr_accessor :input_string

    def initialize(input_string)
        @input_string = input_string
    end

    def find_frequency_of_string
        string_array = @input_string.delete(".").split(" ")
        frequency_of_word_map = {}
        string_array.each do |word|
            if word != "." || word != " "
                if frequency_of_word_map.has_key?word
                  frequency_of_word_map[word] += 1
                else
                  frequency_of_word_map[word] = 1 
                end
            end
        end
        return frequency_of_word_map
    end

    def print_maximum_three_frequency
        frequency_of_word_map = @input_string.sort_by { |k,v| v }.reverse.to_h
        counter = 0
        frequency_of_word_map.each do |key, value|
            if counter < 3
              print (key.to_s + "-" + value.to_s + "\t")
              counter += 1
            end
        end
    end
  end

  string_input = ThreeFrequentWords.new("this is a cat. this is rat. that is a dog.")
  frequency_of_word_map = string_input.find_frequency_of_string
  word_frequency = ThreeFrequentWords.new(frequency_of_word_map)
  word_frequency.print_maximum_three_frequency








