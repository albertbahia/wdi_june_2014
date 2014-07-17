=begin
Instance Methods
* defined without `self`
* are called only on instances of the class
* they can reference instance variables
* self means the instance the method was called on

Class methods
* defined with self
* can only be called on the class itself
* cannot reference instance variable
* self means the class
=end

class Person

  def burp
    "#{@name} goes burrrrrrp"
  end

  # Here self refers to the enclosing class, Person,
  # because the method is defined in the class
  def self.species
    "#{@name} is Homo Sapiens"
  end

  def self.what_is_self?
    # Here self refers to the enclosing class, Person, since we
    # are inside a class method
    return self
  end

  def what_is_self?
    # Here self refers to the instance of person the method was called on.
    return self
  end

  def message
    "oh hi there"
  end

  def say_hello
    puts self.message
  end

end

bob = Person.new
bob.burp
# => "burrrrrrp"

bob.say_hello
# bob.message -> "oh hi there"
# puts "oh hi there"

# NOT VALID: bob.species
Person.species
