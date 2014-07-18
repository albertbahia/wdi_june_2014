numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']
#find_index
def find_index_new(arr)
  i = 0
  while i < arr.size
    if yield(arr[i])
      puts i.to_s
      break
    end
    i+=1
  end
end

find_index_new(duplicate_strings){|ele| ele == "what"}

#select
def select_new(arr)
  i = 0
  new_arr = []
  while i < arr.size
    if yield(arr[i])
      new_arr << arr[i]
      i+=1
    else
      i+=1
    end
  end
  return new_arr
end

select_new(numbers){|ele| ele.even?}

#reject
def reject_new(arr)
  i = 0
  new_arr = []
  while i < arr.size
    unless yield(arr[i])
      new_arr << arr[i]
      i+=1
    else
      i+=1
    end
  end
  return new_arr
end

reject_new(strings){|ele| ele.size > 2}

#map
def map_new(arr)
  i = 0
  new_arr = []
  while i < arr.size
    new_arr << yield(arr[i])
    i+=1
  end
  return new_arr
end

map_new(numbers){|ele| ele + 5}
