# def run_a_block_twice
#   yield
#   yield
# end
#
# run_a_block_twice do
#   puts "hello"
# end
#
# def run_a_block_n_times(num_times)
#     n = 0
#     while n < num_times do
#       yield
#       n+=1
#     end
# end
#
# run_a_block_n_times(10) do
#   puts "Hello"
# end
#
#


# def maybe
#
#   if rand(100).odd?
#     yield
#   end
# end

# def maybe
#   if rand < 0.5
#     yield
#   end
# end
#
# maybe { puts "Hello" }

# def maybe(percent)
#   if rand < percent
#     yield
#   end
# end
#
# maybe(0.2) { puts "Hello" }
#
#
# def my_each(array)
#   n = 0
#   while n < array.length
#     yield(array[n])
#     n+=1
#   end
# end
#
# animals = ["cat", "dog", "pikachorb", "falcon"]
#
# my_each(animals) do |animal|
#   puts "I'm afraid of #{animal}s."
# endx
#
# my_sweet_proc = Proc.new { puts "hello from my sweet proc" }
#
add_one = Proc.new { |x| puts x = x + 1 }

print_num_as_fav = Proc.new {|num| puts "#{num} is my favorite number!"}

fav_nums = [2,5,4,1]

def my_each_for_procs(array, proc_to_run)
    n = 0
    while n < array.length
      proc_to_run.call(array[n])
      n+=1
    end
end


my_each_for_procs(fav_nums, print_num_as_fav)

#lambda
print_number_as_cool = -> num {puts "#{num} is cool"}


print_number_as_cool.call(200)
