def run_a_block_n_times(n)

  i = 0
  while i < n do
    yield
    i += 1
  end

end


# run_a_block_n_times(5) do
#   puts "hey"
# end

# # adam's method
# def maybe
#   if rand < .5
#     yield
#   end
# end
#
# def maybe
#   case rand(2)
#     when 1
#       yield
#     end
# end



def maybe(odds)
  if rand < odds
    yield
  end
end

maybe(0.75) { puts "call me maybe" }


def call_with_random_number_and_hello
  random_num = rand(100)
  yield(random_num, "hello")
end

call_with_random_number_and_hello { |x, message| puts "#{message}, my fav num is #{x}"}



animals = ["cat", "dog", "owl"]

def my_each(array)
  i = 0
  while i < array.count do
    yield(array[i])
    i += 1
  end
end


my_each(animals) { |animal| puts "#{animal} is cool" }


my_sweet_proc = Proc.new { puts "hello from my sweet proc" }
my_sweet_proc.call


add_one = Proc.new { |x| puts x + 1 }
add_one.call 12

subtract_one = Proc.new { |x| puts x - 1 }
multiply_by_two = Proc.new { |x| puts x * 2 }




def my_each_for_procs(array, proc_to_run)
  i = 0
  while i < array.count do
    proc_to_run.call(array[i])
    i += 1
  end
end

fav_nums = [1, 4, 10, 44, 42]
my_each_for_procs(fav_nums, add_one)

print_num_as_fav = Proc.new { |x| puts "#{x} is my favorite number"}
