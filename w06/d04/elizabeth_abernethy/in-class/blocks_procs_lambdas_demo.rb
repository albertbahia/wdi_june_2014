# -------------------------------- BLOCKS -------------------------------------

animals = ["cat", "dog"]

animals.each do |animal|
  puts animal + " is an animal."
end


def run_a_block
  yield
end

run_a_block do
  puts "hello, I'm a block"
end

run_a_block do
  num1 = 10
  num2 = 20
  puts num1 + num2
end

def run_a_block_twice
  yield
  yield
end

# anonymous functions > don't have a name :(
# - can only have one of them because it doesn't have a name
run_a_block_twice do
  puts "hello"
end

# do/end define a method

def run_a_block_twice(num_times)
  i = 0
  while i < num_times
    yield
    i += 1
  end
end

run_a_block_n_times(5) { puts "hello" }

# rand -> returns a number from 0 - 1, unless you specify
# def maybe
#   if rand(100).even?
#     yield
#   end
# end

def maybe
  if rand < .5
    yield
  end
end

maybe { puts "hi there!" }

def maybe(odds)
  if rand < odds
    yield
  end
end

maybe(0.75) { puts "hiya!" }

maybe(0.5) { puts "howdy." }

maybe(0.25) { puts "what's up?" }









def calls_block_with_hello
  string = "hello"
  yield(string)
end

calls_block_with_hello { |message| puts message}

def calls_block_with_goodbye
  yield("goodbye")
end

calls_block_with_goodbye { |message| puts message}
end


def call_with_random_number
  random_num = rand(100)
  yield(random_num)
end

call_with_random_number { |x| puts x + 100000 }





def call_with_random_number_and_hello
  random_num = rand(100)
  yield(random_num, "hello")
end

call_with_random_number_and_hello { |x, message| puts "#{message}, my fav num is #{x}"}



# blocks are: function without a name that knows about everything else in the program



def my_each(array)
  i = 0
  while i < array.size
    yield(array[i])
    i += 1
  end
end


animals = ["cat", "dog", "owl"]

sounds = ["boop", "beep", "blargh"]

x = 10

my_each(animals).each do |animal|
  puts "#{animal} is cool"
end


my_each(sounds) do |sound|
  puts x
  puts animals
  puts "#{sound} is a cool sound"
end


# -------------------------------- PROCS -------------------------------------

my_sweet_proc = Proc.new { puts "hello from my sweet proc"}
my_sweet_proc.call

add_one = Proc.new { |x| puts x + 1 }
subtract_one = Proc.new { |x| puts x - 1 }
multiply_by_two = Proc.new { |x| puts x * 2 }
print_number_as_favorite = Proc.new { |x| puts "#{x} is my favorite!"}


def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.size
    proc_to_run.call(array[i])
    i += 1
  end
end

fav_nums = [1, 5, 10, 44, 42]

my_each_for_procs(fav_nums, add_one)


# -------------------------------- LAMBDAS -------------------------------------

# stabby lambda syntax (->), can also say the word lambda
print_number_as_cool = -> (num) { puts "#{num} is cool"}
