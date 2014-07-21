# find_index
# select
# reject
# map

# select only even numbers from an array
# reject strings longer than two characters
# find the index of the first 'what' in the array of duplicate strings
# map across an array and add 5 to each number


numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']



#find_index 

def find_index(array)
	i = 0
	while i < array.length
		if yield(array[i])
			return i
		end
		i += 1
   end
end

find_index(duplicate_strings) { |x| x == "what"}

#select
def select(array)
	new_array = []
	i = 0
	while i < array.length
		if yield(array[i])
			new_array.push(array[i])
		end
		i += 1
	end
	return new_array
end

select(numbers) {|x| x%2 == 0}

#reject
def reject(array)
	i = 0
	while i < array.length
		if yield(array[i])
			array.delete_at(i)
		end
		i += 1
	end
end

reject(strings) {|x| x.length > 2 }

#map
def map(array)
	new_array = []
	i = 0
	while i < array.length
		new_array.push(yield(array[i]))
		i += 1
	end
	return new_array
end

plus_five = map(numbers) {|x| x + 5} 








