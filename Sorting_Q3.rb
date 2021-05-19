input_array = [['Ajay',10000,400 ], ['Vijay',6000,300], ['Ram',7000,200], ['Shyam',7700,350]]
answer_map = {}

input_array.sort_by! { |input| input[1].div(input[2]) }
input_array.each { |name| print name[0]+" " }



