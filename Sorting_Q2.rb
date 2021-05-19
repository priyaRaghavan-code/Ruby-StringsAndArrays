hash_array =  [{ :width => 3, :height => 2}, { :width => 1, :height => 1}, { :width => 1, :height => 2 }]
print hash_array.sort { |a, b| (a[:width] * a[:height]) - (b[:width] * b[:height]) }