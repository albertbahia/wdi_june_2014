def run_a_block
	yield
end

run_a_block do
	puts 'hello, I am a block!'
end

def run_a_block_twice
	2.times{ yield }
end

run_a_block_twice do 
	puts "hello"
end

def run_a_block_n_times(num_times) 
	i = 0
	while i < num_times 
		yield
		i +=1
	end
end

run_a_block_n_times(5) do   #5 is the argument, we can pass in various number of argument
	puts 'hello'    #this is the block
end

def maybe(odds)
	if rand(100) < odds
		yield
	end
end

maybe(75) { puts 'hello' }
maybe(50) { puts 'hello' }
maybe(20) { puts 'hello' }
# ==================================

def calls_block_with_hello
	yield("hello")
end

def calls_block_with_goodbye
	yield("goodbye")
end

calls_block_with_hello do |message|
	puts message
end

calls_block_with_goodbye do |message|
	puts message
end

#===================================

def call_with_random_number
	random_number = rand(100)
	yield(random_number)
end

call_with_random_number { |x| puts x + 1000 }
call_with_random_number { |x| puts x + 100 }
call_with_random_number { |x| puts x*10 }
#===================================

def call_with_random_number_and_hello
	random_number = rand(100)
	yield(random_number, "hello")
end

call_with_random_number do
 |x, message| puts "#{message}, #{x} is my Number "
end

#====================================

def my_each(array)
	for i in 0..array.length - 1
		yield(array[i]) 		#This yield is to call the block
	end										#Methods define their own scope but blocks don't, they can access all public variables 
end

animals = ['cat', 'dog', 'owl']

my_each(animals) do |animal|
	puts "#{animal} is cool"
end

#*************************************

#PROC
my_sweet_proc = Proc.new { puts "hello from my sweet proc !"}
#Call proc:
my_sweet_proc.call 

add_one = Proc.new { |x| x += 1 }
add_one.call(12)

def my_each_for_procs(array, proc_to_run)
	i = 0
	while i < array.size
		proc_to_run.call(array[i])   #Here is how we use proc inside a method/function
		i +=1
	end
end

my_fav_num = [1, 3, 4, 9]
my_each_for_procs(my_fav_num, add_one)

print_number_as_favorite = Proc.new { |num| puts "My fav num is #{num}"}
my_each_for_procs(my_fav_num, print_number_as_favorite)




















