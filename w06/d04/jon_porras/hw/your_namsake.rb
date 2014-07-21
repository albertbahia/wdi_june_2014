#FIND INDEX
def my_find_index(*args)
  if args.length == 2
    array = args[0]
    num  = args[1]

    n = 0
    while n < array.length
    num_check = yield(array[n])
      if num_check == num
        puts n
        break
      end
    n+=1
    end

  elsif args.length == 1
    array = args[0]
    n = 0

    while n < array.length
       num_check = yield(array[n])
         if num_check == array[n]
           puts n
           break
         end
      n+=1
    end
  end
end

#FIND INDEX TESTS
arr = [1,77,28,13, 34]

my_find_index(arr, 13) do |num|
  num
end

my_find_index(arr) do |num|
  if num % 2 == 0
    num
  end
end

duplicate_strings = ['yo', 'what', 'is', 'up', 'what']

my_find_index(duplicate_strings, "what") do |word|
  word
end


#SELECT
def my_select(array, new_arr)
  n=0
  new_array =[]
  while n < array.length
    current_el = yield(array[n])
    if current_el != nil
      new_array.push(current_el)
    end
    n+=1
  end
  print new_array
end

#SELECT TESTS
arr = [4,8,56,12,9,13]
new_arr = []
numbers = [1,2,3,4,5,6]

my_select(arr, new_arr) do |el|
  if el % 2 == 0
    el
  end
end

# REJECT
def my_reject(array, new_arr)
  n=0
  new_array =[]
  while n < array.length
    current_el = yield(array[n])
    if array[n] != current_el
      new_array.push(array[n])
    end
    n+=1
  end
  print new_array
end

#REJECT TESTS
strings = ['Hi','my','name','is', 'Bob']
new_arr = []

my_reject(strings, new_arr) do |el|
  if el.length > 2
    el
  end
end

#MAP
def my_map(array, new_arr)
  n=0
  new_array =[]
  while n < array.length
      new_array.push(yield(array[n]))
    n+=1
  end
  print new_array
end

#MAP TESTS
numbers = [1,2,3,4,5,6]

my_map(numbers, new_arr) do |num|
  num + 5
end
