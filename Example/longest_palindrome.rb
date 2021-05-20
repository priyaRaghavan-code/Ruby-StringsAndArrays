class LongestPalindrome
    attr_accessor :input_string

    def initialize(input_string)
        @input_string = input_string
    end

    def find_largest_palindrome_from_string
        string_array = @input_string.split(" ")
        palindrome_words = []
        string_array.each do |word|
            if word == word.reverse
                palindrome_words.push(word)
            end
        end
        return palindrome_words
    end
end

string_input = LongestPalindrome.new("mom and dad enjoyed the rotor ride")
palindrome_words = string_input.find_largest_palindrome_from_string
puts palindrome_words.max_by(&:length)



