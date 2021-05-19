puts "Enter the string to reverse"
get_string = gets.chomp()

string_arr = get_string.split(" ")
answer = ""

string_arr.each do |word|
    answer+=word.reverse()
    answer+=" "
end

puts answer
