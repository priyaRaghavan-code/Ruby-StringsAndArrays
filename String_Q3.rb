puts "Enter the string"
get_string = gets.chomp()
string_arr = get_string.split(" ")
palindrome_words = []

string_arr.each do |word|
    if word == word.reverse
        palindrome_words.push(word)
    end
end

puts palindrome_words.max_by(&:length)


