def run_a_block_twice
  yield
end

run_a_block_twice do
  2.times {puts "hello"}
end
_________________________________

def run_a_block_n_times(num_times)
  i = 0
  while i < num_times do
    yield
    i += 1
  end
end

run_a_block_n_times(5) do
  puts "hello"
end
_________________________________
# rand -> returns a number from 0 - 1
# rand(100) -> returns an integer from 0 - 100
def maybe
  if rand < .5
    yield
  end
end

maybe { puts "hello" }

_________________________________

def maybe(odds)
  if rand < odds
  yield
  end
end
maybe(0.75) { puts "hello" }

maybe(0.5) { puts "hello" }

maybe(0.2) { puts "hello" }

_________________________________

def calls_block_with_hello
  yield("hello")
end

calls_block_with_hello do |message|
  puts message
end

OR

calls_block_with_hello { |message| puts message }

__________________________________

def call_with_random_number
  random_num = rand(100)
  yield(random_num)
end

call_block_with_random_number { |x| puts x + 10000 }

__________________________________

def my_each(array)
  i = 0
  while i < array.size
    # this is when we called the block
    yield(array[i])
    i+= 1
  end
end

animals = ["cat", "dog", "owl"]
my_each(animals) do |animal|
  puts "#{animal} is cool"
end

_________________________________

def add_one_to_x
  x + 1
end

x + 10
add_one_to_x()


___________________________________

my_sweet_proc = Proc.new { puts "hello from my sweet proc" }
my_sweet_proc.call

add_one = Proc.new {|x| puts x + 1}
subtract_one = Proc.new {|x| puts x - 1}
multiply_by_two = Proc.new {|x| puts x * 2}

def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.size
    proc_to_run(array[i])
    i+= 1
  end
end

fav_nums = [1, 5, 10, 44, 42]
my_each_for_procs(fav_nums, add_one)

# make a proc called 'print_number_as_favorite'
# use the 'my_each_for_procs' to call that proc on all of our fav_nums

print_number_as_favorite = Proc.new { |num| puts "My favorite number is #{num}" }
my_each_for_procs(fav_nums, print_number_as_favorite)

print_number_as_cool = -> (num) { puts "#{num} is cool" }
