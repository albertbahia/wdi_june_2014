def run_once
  yield
end

def run_twice
  yield
  yield
end

def maybe
  if rand < .5
    yield
  end
end

def maybe(n)
  if rand < n
    yield
  end
end

def yield_hello
  yield("hello")
end

yield_hello { |string| puts string }
yield_hello { |string| puts string.upcase }

def my_each
  yield
end

do 


def my_each(array)
  i = 0
  while i < array.size
    yield(array[i])
    i += 1
  end
end

def add_one_to_x
  x + 1
end

# will this work?
x = 5
add_one_to_x()

# what about this?
x = 5
run_once { x += 1 }

# it worked!

# does defining the block run the code in the block for sure?
# no! the block is only run when it is called via `yield`.

# this may not modify x if maybe doesn't run it.
maybe { x += 1}


# PROCS

add_one = Proc.new {|x| x + 1 }
add_one.call(4)

def run_a_proc_with_five(proc_to_run)
  proc_to_run.call(5)
end

# Lambdas

a = ->(x) { x + 1 }
a.call(2)
