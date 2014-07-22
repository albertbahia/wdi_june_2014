def run_a_block
  yield
end

run_a_block do
  puts "hello, I'm a block!"
end

run_a_block do
  num1 = 10
  num2 = 20
  puts num1 + num2
end

def run_a_block_twice
  yield
  yield
  yield
end

run_a_block_twice do
  puts "hello"
end

def run_a_block_n_times(num_times)
  i = 0
  while i < num_times
    yield
    i += 1
  end
end

run_a_block_n_times(5) do
  puts "hello"
end

def maybe
  if rand < (0.5)
    yield
  end
end

maybe { puts "hello" }


def maybe(odds)
  if rand < odds
    yield
  end
end

maybe(0.75) { puts "hello" }

maybe(0.50) { puts "hello" }

maybe(0.2) { puts "hello" }


def calls_block_with_hello
  yield("hello")
end

calls_block_with_hello do |message|
  puts message
end

def calls_block_with_goodbye
  yield("goodbye")
end

calls_block_with_goodbye do |message|
  puts message
end

def call_with_random_number
  random_num = rand(100)
  yield(random_num)
end

call_with_random_number { |x| puts x + 100000 }


def call_with_random_number_with_a_string
  random_num = rand(100)
  yield(random_num, "hello")
end

call_with_random_number_with_a_string { |x, string| puts "#{string.capitalize}, did you know my favorite number is #{x}?"}




def my_each(array)
  i = 0
  while i < array.size
    yield(array[i])
    i += 1
  end
end

animals = ["cat", "dog", "owl"]

my_each(animals) { |animal| "#{animal} is a cool animal." }

my_each(animals) do |animal|
  puts "#{animal} is a cool animal."
end



my_sweet_proc = Proc.new { puts "Hello from my sweet proc" }
my_sweet_proc.call

add_one = Proc.new {|x| puts x + 1 }
subtract_one = Proc.new { |x| puts x - 1 }
multiply_by_two = Proc.new { |x| puts x * 2 }

def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.size
    proc_to_run.call(array[i])
    i += 1
  end
end

fav_num = [1, 7, 18, 43, 44]



print_number_as_favorite = Proc.new { |num| puts "#{num} is my favorite number"}
my_each_for_procs(fav_num, print_number_as_favorite)
