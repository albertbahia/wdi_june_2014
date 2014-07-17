animals = ["cat", "dog"]

animals.each do |animal|
  puts animal + " is an animal".
end

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

run_a_block_n_times(5) { puts "hello" }

# rand -> returns a float from 0 - 1
# rand(100) -> returns an integer from 0 - 100
def maybe(odds)
  if rand < odds
    yield
  end
end

maybe(0.75) { puts "hello" }

maybe(0.5) { puts "hello" }

maybe(0.2) { puts "hello" }








def calls_block_with_hello
  string = "hello"
  yield(string)
end

calls_block_with_hello { |message| puts message }

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
call_with_random_number { |x| puts x * 10 }
call_with_random_number { |x| puts "#{x} is my new beffie number" }


def call_with_random_number_and_random_message
  rand_message = ["hello", "goodbye", "sup bae", "heyheyhey", "coolcoolcool"].sample
  random_num = rand(100)
  yield(random_num, rand_message)
end

def say_fav_num(num, message)
  puts "#{message}, my fav num is #{num}"
end

call_with_random_number_and_random_message { |num, message| puts "#{message}, my fav num is #{num}"}
call_with_random_number_and_random_message { |num, message| puts "my fav num is #{num}, #{message}"}
call_with_random_number_and_random_message { |num, message| num.times { puts message } }



def my_each(array)
  i = 0
  while i < array.size
    # this is when we called the block
    # x?
    yield(array[i])
    i += 1
  end
end

animals = ["cat", "dog", "owl"]
my_each(animals) do |animal|
  puts "#{animal} is cool"
end

sounds = ["boop", "beep", "blargh"]
x = 10

my_each(sounds) do |sound|
  puts x
  print animals
  puts "#{sound} is a cool sound."
end


my_sweet_proc = Proc.new { puts "hello from my sweet proc"}
my_sweet_proc.call

add_one = Proc.new {|x| puts x + 1}
subtract_one = Proc.new {|x| puts x - 1}
multiply_by_two = Proc.new {|x| puts x * 2}

def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.size
    proc_to_run.call(array[i])
    i += 1
  end
end

fav_nums = [1, 5, 10, 44, 42]
my_each_for_procs(fav_nums, add_one)

# make a proc called 'print_number_as_favorite'
# use the `my_each_for_procs` to call that proc on all of our fav_nums
print_number_as_favorite = Proc.new {|num| puts "#{num} is my new favorite number"}
my_each_for_procs(fav_nums, print_number_as_favorite)

print_number_as_cool = -> (num) { puts "#{num} is cool" }
