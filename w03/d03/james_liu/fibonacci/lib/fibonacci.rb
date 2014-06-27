def sum_of_even_fibonaccis(limit)
    holder = [1,2]
    #sets array with the first 2 terms
    

    while (holder[-1] + holder[-2]) < limit
    #sets limit    
      holder << holder[-1] + holder[-2]
    #shoves sum of last 2 values into the holder array 
    end
    
    return holder.select { |num| num.even? }.reduce(:+)
    #selects only the even numbers and adds them together
end


