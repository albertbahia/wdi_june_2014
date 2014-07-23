
def run_a_block_twice
  yield
  yield
end

run_a_block_twice do
  puts "hello"
end

def run_a_block_n_times(num_times)
  i = 0
  while i < num_times do
    yield
    i+=1
  end
end

run_a_block_n_times(5) do
  puts "hello"
end

# rand -> returns a float from 0-1
# rand(100) -> returns an integer from 1-100

def maybe
  if rand < 0.5
    yield
  end
end

maybe { puts "hello" }

def maybe(odds)
  if rand < odds
   yield
  e
end

maybe(0.75) { puts "hello" }
maybe(0.5) { puts "hello" }
maybe(0.2) { puts "hello" }

#
def call_with_random_number
  random_num = rand(100)
  yield(random_num)
end

call_with_random_number { |x| puts x + 10000}
call_with_random_number { |x| puts "#{x} is my fave"}

# write your own each method

def my_each(array)
  n = 0
  while n < array.length do
    yield array[n]
    n += 1
  end
end

animals = ["cat", "dog", "owl", "yeti", "bigfoot", "lochness monster", "donald trump"]

my_each(animals) do |animal|
  puts "#{animal} is gnarly."
end


my_sweet_proc = Proc.new { puts "hello from my sweet proc" }
my_sweet_proc.call

add_one = Proc.new { |x| puts x + 1 }
add_one.call(2)

subtract_one = Proc.new { |x| x -= 1 }

multiply_by_two = Proc.new { |x| puts x * 2 }
raise_to_nth_power = Proc.new { |x, n| puts x ** n }


def my_each_for_procs(array, proc_to_run)
  n = 0
  while n < array.length do
    proc_to_run.call(array[n])
    n += 1
  end
end

fav_nums = [1, 4, 6, 77, 945]

my_each_for_procs(fav_nums, add_one)

print_number_as_favorite = Proc.new { |x| puts "#{x} is my favorite number." }

my_each_for_procs(fav_nums, print_number_as_favorite)


# lambda

print_number_as_cool = -> (num) { puts "#{num} is cool "}
print_number_as_cool.call(4)
