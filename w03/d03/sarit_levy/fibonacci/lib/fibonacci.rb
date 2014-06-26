
 #fibonacci numbers are  1, 2, 3, 5, 8, 13, 21, 34, 55, 89...

 #this program is doing the sum of two numbers that will equal to the fibonacci
 #number 3 then equaling 3 plus 2 to equal 5 then 3 plus 5 to equal 8, etc.
 #the program is doing this by .push the return result into the array and then continues to add

 def sum_of_even_fibonaccis(limit)
   holder = [1,2]  #this is an array of two numbers 1 and 2

   while (holder[-1] + holder[-2] < limit)  #this is calling the index value -1 from the array so that is 2 and the index -2 is the number 1 in the array
   holder.push(holder [-1] + holder[-2])
   end
   return holder.select { |num| num.even? }.reduce(:+)

 end
 
#This is another way to solve this problem without a looping array as above:
# def sum_of_even_fibonaccis(limit)
#   num = 1
#   adder = 2
#   holder = 0
#   total = 0
#   while adder < limit
#     total += adder if holder.even?
#     holder = num + adder
#     num = adder
#     adder = holder
#     return total if adder > limit
#   end
#   return total
# end
