def run_a_block_twice
  yield
  yield
end


def run_a_block_n_times(num_times)
  counter = 0
  until num_times == counter
    yield
    counter += 1
  end
end

def maybe(odds)
  odds = odds * 100

  maybe = []

  odds.to_i.times do
    maybe << true
  end

  odds = 100 - odds

  odds.to_i.times do
    maybe << false
  end

  if maybe.sample
    yield
  end
end

def my_each(array)
  i = 0
  until array.length == i
    yield(array[i])

    i += 1
  end
  array
end


print_number_as_favorite = Proc.new { |num| puts "#{num} is my favorite number!" }

def my_each_for_procs(array, proc)
  i = 0
  until array.length == i
    proc.call(array[i])
    i += 1
  end
  array
end
