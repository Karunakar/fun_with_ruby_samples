def a_method(a,b)
	return yield(a,b) if block_given?
	'no block'
end

a_method(1,2) {|x,y| (x+y) *3}

def my_method
	x = "GoodBye"
	yield("cruel")
end
x = "Hello"
my_method{|y| "#{x}, #{y} world"}
