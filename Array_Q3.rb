puts "Enter the string"
get_string = gets.chomp().delete('.')
string_arr = get_string.split(" ")
answer_map = {}

for word in string_arr
    if word!="." || word!=" "
        if answer_map.has_key?word
            answer_map[word]+=1
        else
            answer_map[word]=1 
        end
    end
end

puts ("Total number of different words are "+answer_map.size().to_s)