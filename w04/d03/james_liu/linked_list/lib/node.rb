class Node

  attr_reader(:value)

  def initialize(value)
    @value = value
  end

  def set_next(new_node)
    if new_node.class == Node
    else 
      false
    end 
  end

  def next(prev_node)

  end

end