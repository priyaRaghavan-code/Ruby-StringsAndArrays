puts "Enter the string"
get_string = gets.chomp().delete('.')
string_arr = get_string.split(" ")
answer_map = {}

string_arr.each do |word|
    if word != "." || word != " "
        if answer_map.has_key?word
            answer_map[word] += 1
        else
            answer_map[word] = 1 
        end
    end
end

answer_map = answer_map.sort_by{|k,v|v}.reverse.to_h
puts answer_map
counter = 0
answer_map.each do |key, value|
    if counter < 3
        print (key.to_s + "-" + value.to_s + "\t")
        counter += 1
    end
end





