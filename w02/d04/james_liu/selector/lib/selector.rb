def selector(limit)
    sum = (1...limit).select { |num| num%3 == 0 || num%5 == 0}
    sum.reduce(:+)
end
