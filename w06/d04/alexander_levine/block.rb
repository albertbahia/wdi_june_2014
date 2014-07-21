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

run_a_block_n_times(5) do
  puts "hello"
end

def maybe
  if rand >= 0.5
    yield
  end
end

maybe { puts "hello"}

def maybe(odds)
  if rand < odds
    yield
  end
end

maybe(0.75) { puts "hello"}



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




def my_each(array)
  i = 0
  length = array.length
  while i < length
    yield(array[i])
    i += 1
  end
end

animals = ["cat", "dog", "owl"]

my_each(animals) do |animal|
  puts "#{animal} is cool"
end





my_sweet_proc = Proc.new { puts "hello from my sweet proc" }
my_sweet_proc.call

add_one = Proc.new { puts x + 1 }
subtract_one = Proc.new { puts x - 1 }
multiply_by_two = Proc.new { puts x * 1 }

fav_num = [1, 5, 10, 44, 42]

add_one.call(10)

def my_each_for_procs(array, proc_to_run)
  i = 0
  length = array.length
  while i < length
    proc_to_run.call(array[i])
    i += 1
  end
end

my_each_for_procs(fav_num, favorite_num)



favorite_num = Proc.new { |x| puts "#{x} is my favorite number"}

#lambda version:

favorite_num = -> (num) { puts "#{x} is my favorite number"}
