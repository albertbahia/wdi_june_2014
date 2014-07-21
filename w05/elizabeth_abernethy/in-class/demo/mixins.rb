require 'pry'

module Burping
  def burp
    "burrrrrp"
  end
end

class Pokemon
  extend Burping

  def initialize(name, type, hp)
    @name = name
    @type = type
    @hp = hp
  end

end


class Wolf
  extend Burping

  def initialize(name)
    @name = name
    @hp = 100
  end

end

Wolf.new.burp # include Burping
Wolf.burp # extend Burping

binding.pry


{}.each
[].each

# both include a module called: Enumerable

class Person < ActiveRecord::Base
  include enumerable
  # define next method - tell it how to get to the next value
end

include comparable
# ex? bob < kathy
# def <==>(other) "spaceship method"
