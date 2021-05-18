puts "Enter the string to reverse"
get_string = gets.chomp()

string_arr = get_string.split(" ")
answer = ""

for word in string_arr
    answer+=word.reverse()
    answer+=" "
end

puts answer
