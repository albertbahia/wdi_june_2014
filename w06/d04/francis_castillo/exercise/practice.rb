def run_a_block_twice
  yield.times(2)
end

run_a_block do
  puts hello
end

  def run_a_block_n_times(num_times)
    while num_times > 0
      num_times -=1
      yield
    end
  end

  run_a_block_n_times(3) do
    puts 'hello'
  end

  def run_a_block_50
    if rand(1..10).even?
      yield
    end
  end

  run_a_block_50 do
    puts 'hello'
  end

  def maybe(odds)
    if rand < odds
      yield
    end
  end

  maybe(0.75) { puts 'hello' }
  maybe(0.5) { puts 'hello' }
  maybe(0.2) { puts 'hello' }


  def my_each(array)
    i = 0
    while i < array.count
      yield(array[i])
      i+=1
    end
  end

  animals = ["cats", "dogs", "birds", "lizards"]
  # my_each(animals) {|animal| puts animal}

  new_proc = Proc.new {|ele| puts ele}

  def my_each_proc(array,proc_to_run)
    i = 0
    while i < array.count
      proc_to_run.call(array[i])
      i+=1
    end
  end
my_each(animals)
  fav_nums = [9,15,41,17,22,21]

  print_num_as_favorite = Proc.new { |num| puts "#{num} is my new favorite number" }

  my_each_proc(fav_nums, print_num_as_favorite)
