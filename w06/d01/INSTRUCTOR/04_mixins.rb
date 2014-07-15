require 'pry'

# Define a module, and instance methods on the module
# We can't use these methods until we include them into a class
module Burpable
  def burp
    puts self
    "burrrrp"
  end
end

class Pokemon
  # This includes all methods on the module into this class as instance methods
  include Burpable

  def initialize(name, type, hp)
    @name = name
    @type = type
    @hp = hp
  end
end

class Wolf
  # This includes all methods on the module into this class as instance methods
  include Burpable

  def initialize(name)
    @name = name
    @hp = 100
  end
end

=begin
If we wanted to include the methods into a class as *class* methods,
we would use `extend` instead of `include`
=end

binding.pry
