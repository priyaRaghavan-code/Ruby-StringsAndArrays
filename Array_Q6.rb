class Common_Element
	attr_accessor :array1
	
	def initialize(array1)
		@array1 = array1
	end

	def -(obj)
		return self.array1.&(obj.array1)
	end

end

array_one = Common_Element.new([2, 4, 5, 7, 8, 10, 12])
array_two = Common_Element.new([1, 2, 3, 6, 12])

print array_one - array_two 
