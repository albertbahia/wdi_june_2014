class Person
  attr_accessor :name

  # instance method
  def burp
    "#{@name} goes burrrrrrrp"
  end

  # class method
  def self.species
    "Homo Sapiens"
  end

  # class
  def self.what_is_self?
    return self
  end

  # instance
  def what_is_self?
    return self
  end

  def message
    "oh hi there"
  end

  def say_hello
    puts self.message
  end

end


# --- Instance Method
bob = Person.new
bob.burp
# => "burrrrrrrrp"


# --- Class Method
Person.species
