class DifferentWordsInString
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
        puts ("Total number of different words are " + frequency_of_word_map.size().to_s)
    end
end

input_string = DifferentWordsInString.new("This is a cat This cat is big I like cat")
input_string.find_frequency_of_string