# A new array can be created by using the literal constructor [].
# Arrays can contain different types of objects.
# For example, the array below contains an Integer, a String and a Float:

array = [1, 'two', 3.0] #=> [1, 'two', 3.0]

# An array can also be created by explicitly calling ::new with zero,
# one (the initial size of the Array) or two arguments (the initial size and a default object).

array = Array.new           #=> []
array = Array.new(2)        #=> [nil, nil]
array = Array.new(2, true)  #=> [true, true]

# To create an array with separate objects a block can be passed instead.
# This method is safe to use with mutable objects such as hashes, strings or other arrays:

array = Array.new(4) { Hash.new } #=> [{}, {}, {}, {}]

# This is also a quick way to build up multi-dimensional arrays:

array = Array.new({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]

# in pratice

# Elements in an array can be retrieved using the #[] method.
# It can take a single integer argument (a numeric index), a pair of arguments (start and length) or a range.
# Negative indices start counting from the end, with -1 being the last element.

array = [1,2,3,4,5,6,7,8]

array[-1]   #=> 8
array[0]    #=> 1
array.first #=> 1
array.last  #=> 8