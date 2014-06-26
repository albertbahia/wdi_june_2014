require 'benchmark'

Benchmark.bmbm do |results|
  # Array holder
  results.report do
    holder = [1,2]
    holder << holder[-1] + holder[-2] while (holder[-1] + holder[-2]) < 4000000
    holder.select { |num| num.even? }.reduce(:+)
  end
  # No arrays, straight maths
  results.report do
    num = 1
    holder = 2
    total = 0
    while holder < 4000000
      break if holder > 4000000
      total += holder if holder.even?
      num += holder
      holder = num
    end
  end
  # Perfect Square - Wiki
  results.report do
    (1...4000000).select do |num| Math.sqrt(5*(num**2)+4).to_i == Math.sqrt(5*(num**2)+4) || Math.sqrt(5*(num**2)-4).to_i == Math.sqrt(5*(num**2)-4)
  end.select { |num| num.even? }.reduce(:+) 
  end

end