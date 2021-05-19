def find_maximum_repeating_number(numbers)
     numbers.inject({}) { |h,v| 
        h[v] = numbers.count(v)
        h
    }
end

numbers = []
puts "Enter number of elements you want to add into array"
n = gets.chomp.to_i
while (n>0)
    numbers.push(gets.chomp())
    n-=1
end

max_repeating_num = find_maximum_repeating_number(numbers)
max_repeating_num = max_repeating_num.sort.to_h

puts ("Number " + max_repeating_num.keys[0].to_s + " is repeating " + max_repeating_num.values[0].to_s + " times")