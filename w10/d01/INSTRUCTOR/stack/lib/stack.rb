class Stack

  def initialize
    @data = []
  end

  def push(value)
    @data << value
    return nil
  end

  def pop
    @data.pop()
  end

  def peek
    @data.last()
  end
end



my_stack = Stack.new
my_stack.push(10)
my_stack.push(5)
my_stack.push(12)
my_stack.pop()
my_stack.pop()
my_stack.peek()
