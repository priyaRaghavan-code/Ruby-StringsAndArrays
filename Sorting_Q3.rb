input_array = [ [ 'Ajay', 10000, 400 ], [ 'Vijay', 6000, 300 ], [ 'Ram', 7000, 200 ], [ 'Shyam', 7700, 350 ] ]
answer_map = {}

input_array.each do |person_arr|
    bowling_average = person_arr[1].div(person_arr[2])
    if !answer_map.has_key?person_arr[0]
        answer_map[person_arr[0]] = bowling_average
    end
end

answer_map = answer_map.sort_by{|k, v| v}.to_h
print answer_map.keys

