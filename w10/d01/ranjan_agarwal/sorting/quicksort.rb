require 'pry'

def quick_sort(array)
  
  # The array is sorted
  return array if array.length <= 1
  
  # Conquer and Divide!!! (Recursion)
  pivot_point = array.length / 2
  
  # Lower array before pivot point
  lower_array = []

  # Higher array after pivot point
  higher_array = []

  # Partion the array
  array.length.times do |index|
    if index == pivot_point
    # If index is greater than the pivot point, it gets pushed into higher array
    elsif array[index] >= array[pivot_point]
      higher_array << array[index]
    # If index is lesser than the pivot point, it gets pushed into lower array
    else
      lower_array << array[index]
    end
  end

  # Combines the arrays and pivot point
  return quick_sort(lower_array) + [array[pivot_point]] + quick_sort(higher_array)
end

array = [42,35,2,5,67,43,42,95,99]
puts quick_sort(array)

# Psuedo Code
# function quicksort(array)
#     var list less, equal, greater
#     if length(array) ≤ 1  
#         return array  
#     select a pivot value pivot from array
#     for each x in array
#         if x < pivot then append x to less
#         if x = pivot then append x to equal
#         if x > pivot then append x to greater
#     return concatenate(quicksort(less), equal, quicksort(greater))










# def quicksort(array)  
#   return array if array.size <= 1  
#   pivot = array.sample  
#   left, right = array.partition { |e| e < pivot }  
#   left + right
# end  






# binding.pry