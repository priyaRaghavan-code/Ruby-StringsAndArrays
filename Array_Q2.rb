numbers = Array.new
puts "Enter number of elements you want to add into array"
n = gets.chomp.to_i
while ( n > 0 )
    numbers.push(gets.chomp())
    n-=1
end

max_index = 0
for number in 0..numbers.length-2
    max = numbers[max_index]-numbers[max_index+1]
    if numbers[number]-numbers[number+1] >= max
        max_index = number
    end
end

print ("Two numbers with biggest difference are "+numbers[max_index].to_s+ " and "+numbers[max_index+1].to_s+ " Their difference is "+(numbers[max_index]-numbers[max_index+1]).to_s)
