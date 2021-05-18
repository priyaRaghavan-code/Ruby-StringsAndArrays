puts "Enter the string"
get_string = gets.chomp()
string_arr = get_string.split(" ")
palindrome_words = []

for word in string_arr
    if word == word.reverse
        palindrome_words.push(word)
    end
end

puts palindrome_words.max_by(&:length)

