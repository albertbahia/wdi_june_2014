# #FIND INDEX
# def my_find_index(array, num)
#   n = 0
#   while n < array.length
#   num_check = yield(array[n])
#     if num_check == num
#       puts n
#     end
#   n+=1
#   end
# end
#
# arr = [1,77,28,13]
#
# my_find_index(arr, 13) do |num|
#   num
# end

#SELECT

is_even_proc = Proc.new do |num|
  if num.even?
    string += "#{num},"
  end

end

arr = [1,24,56,12,9]

def my_select(array, proc)
  n = 0
  new_arr =[]
  while n < array.length
    new_arr.push(proc.call(array[n]))
    n+=1
  end
end

my_select(arr, is_even_proc)
