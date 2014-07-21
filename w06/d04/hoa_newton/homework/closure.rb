
my_array = [1, 4, 9, 22, 45]

# Map
double = Proc.new { |num| num*2 }
def map(array, proc)
	i = 0
	while i < array.size
		new_array = []
		new_array << proc.call(array[i])
		puts new_array
		i +=1
	end
end
map(my_array, double)

# Select
select_proc = Proc.new { |num| num }
def select(array, proc)
	i = 0
	while i < array.size
		new_array = []
		if proc.call(array[i])%2 == 0
			new_array << proc.call(array[i])
			puts new_array
		end
		i +=1
	end
end
select(my_array, select_proc)

# Reject
string_array = ["Hello", "Goodbye", "Google", "Hi", "Yo"]
reject_proc = Proc.new { |string| string }
def reject(array, proc)
	i = 0
	while i < array.size
		new_array = []
		unless proc.call(array[i]).length > 2
			new_array << proc.call(array[i])
			puts new_array
		end
		i +=1
	end
end
reject(string_array, reject_proc)

# Find Index
mix_array = [1, "what", 6, 23, 55, 75, "what"]
# index_proc = Proc.new { |element| element }
def find_index(array)
	i = 0
	while i < array.size
		if array[i] == "what"
			return i
		end
	 	i +=1
	end
end
find_index(mix_array) 














