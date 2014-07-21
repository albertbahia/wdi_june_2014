class Array
  def k_map(proc_object)
    self.each_with_index do |value, index|
      self[index] = proc_object.call(value)
    end
  end

  def k_find(str)
    print str
    return str
  end

end
