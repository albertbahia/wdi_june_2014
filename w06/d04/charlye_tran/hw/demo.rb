def run_a_block_n_times(n)
  i = 1
  while i <= n do
    yield
    i += 1
  end
end

run_a_block_n_times(5) { puts "hello" }

def maybe(odds)
  if rand(100) < odds
    yield
  end
end

maybe(50) { puts "hello" }

def calls_block_with_hello
  yield("hello")
end

calls_block_with_hello { |message| puts message }

def call_with_random_number
  random_num = rand(100)
  yield(random_num)
end

call_with_random_number { |x| puts x + 100 }

def call_with_random_number_and_hello
  random_num = rand(100)
  yield(random_num, "hello")
end

call_with_random_number_and_hello { |x, message| puts "#{message}, #{x} is my favorite number!"}

def my_each(array)
  i = 0
  while i < array.length do
    yield(array[i])
    i += 1
  end
end

animals = ["bear", "lion", "tiger"]
my_each(animals) { |animal| puts animal }

my_sweet_proc = Proc.new { puts "hello "}

add_one = Proc.new { |x| puts x + 1 }
subtract_one = Proc.new { |x| puts x - 1 }
multiply_by_two = Proc.new { |x| puts x * 2 }

def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.length
    proc_to_run.call(array[i])
    i += 1
  end
end

fav_num = [1, 3, 6, 23, 2]
my_each_for_procs(fav_num, print_number_as_favorite)

print_number_as_favorite = Proc.new { |num, multiplier| puts num * multiplier}
