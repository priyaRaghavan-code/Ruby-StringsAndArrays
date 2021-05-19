require 'date'
 array_date_input =  ["06-09-2016","08-07-2016","07-10-2017"]
 print array_date_input.sort_by { |input| Date.parse(input) }
