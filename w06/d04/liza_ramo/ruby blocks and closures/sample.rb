
def sample_array
  array = [true, false]
  if array.sample == true
    yield
  else
    puts "nope"
  end
end

def run_a_block
  yield
end

run_a_block do
  puts "hello!"
end

run_a_block do
  num1 = 10
  num2 = 20
  puts num1 + num2
end


def run_a_block_twice
  yield
  yield
  return "hodor"
end

run_a_block_twice do
  puts 100
end

def run_a_block_n_times(num_times)
  a = 0
  b = num_times
  while a < b do
    puts("inside the loop, a is less than b")
    a += 1
  end
end

def maybe
  a = rand(10)
  if a.even?
    yield
  else
    puts a
  end
end

def maybe(odds)
  if rand < odds
    yield
  end
end

maybe {puts "hello"}


def calls_block_with_hello
  yield("hello")
end

calls_block_with_hello { |message| puts message }

def calls_block_with_goodbye
  yield("goodbye")
end



animals = ["cat", "dog", "owl"]
my_each(animals) do |animal|
  puts "animal"
end

animals = ["cat", "dog"]

animals.each do |animal|
  puts animal
end


################################

def my_each(array)
  num_of_elements = array.count
  counter = 0
  while num_of_elements > counter
    yield(array[counter])
    counter += 1
  end
end

animals = ["cat", "dog", "owl"]

my_each(animals) do |animal|
  puts "#{animal} is cool"
end


###############################

# Procs

my_sweet_proc = Proc.new {puts "hello"}
my_sweet_proc.call

add_one = Proc.new {|x| puts x + 1}
add_one.call(10)

subtract_one = Proc.new {|x| puts x - 1}
subtract_one.call(10)

multiply_by_two = Proc.new {|x| puts x * 2}
multiple_by_two.call(10)

fav_num = [1, 5, 10, 44, 42]


def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.size
    # call the block
    proc_to_run.call(array[i])
    i += 1
  end
end

# Call this method and pass in an array AND a proc as arguments
my_each_for_procs(fav_nums, add_one)

# Make a proc
print_num_as_fav = Proc.new { |number| puts "#{number} is my fav num"}

my_each_for_procs(fav_num, print_num_as_fav)


###########################################
# Lambdas

print_number_as_cool = -> (num) { puts "#{num} is cool" }
print_number_as_cool.call(100, 300)
