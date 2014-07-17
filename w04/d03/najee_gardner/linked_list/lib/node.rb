class Node
  attr_reader :value

  def initialize(num, next_node=nil)
    @value = num
    set_next(next_node)
  end

  def set_next(node)
    if node.is_a?(Node)
      @next_node = node
      true
    else
      false
    end
  end

  def next
    @next_node
  end

end
