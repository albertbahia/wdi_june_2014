# def mergesort(array)
#  counter = 0
#    if array.count <= 1
#        # Array of length 1 or less is always sorted
#        return array
#    end
#
#    # Apply "Divide & Conquer" strategy
#
#    # 1. Divide
#    mid = array.size / 2
#    part_a = mergesort array.slice(0, mid)
#    counter +=1
#    part_b = mergesort array.slice(mid, array.size - mid)
#    counter +=1
#    # 2. Conquer
#    array = []
#    offset_a = 0
#    offset_b = 0
#    while offset_a < part_a.size && offset_b < part_b.size
#        a = part_a[offset_a]
#        b = part_b[offset_b]
#
#        # Take the smallest of the two, and push it on our array
#        if a <= b
#            array << a
#            offset_a += 1
#            counter += 1
#        else
#            array << b
#            offset_b += 1
#            counter +=1
#        end
#    end
#
#    # There is at least one element left in either part_a or part_b (not both)
#    while offset_a < part_a.size
#        array << part_a[offset_a]
#        offset_a += 1
#        counter +=1
#    end
#
#    while offset_b < part_b.size
#        array << part_b[offset_b]
#        offset_b += 1
#        counter +=1
#    end
#    print counter
#    array
# end

def sort(to_sort)
        # if the array is of length 0 or 1, consider it is already sorted
  if to_sort.length <= 1
      then return to_sort
  end

    # otherwise split the remaining elements in two
    # I had to look this line on the web (sourcerefactormycode.com)
    second_array = to_sort.slice!((to_sort.length / 2.0).round..to_sort.length)

    # recursive method call on both arrays
    first_sorted_array = sort(to_sort)
    second_sorted_array = sort(second_array)

    # merge the two sorted arrays together
    return merge(first_sorted_array, second_sorted_array)
end

def merge(first_array, second_array)
    # if either array is empty consider the other already sorted
    return second_array if first_array.empty?
    return first_array if second_array.empty?

    # remove the smallest element out of the two arrays
    if first_array.first <= second_array.first
        element = first_array.shift
    else
        element = second_array.shift
    end
    
    # recursive call to construct the merged array
    return [element] + merge(first_array, second_array)

end