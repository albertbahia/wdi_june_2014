require_relative './human.rb'

class King < Human

  attr_reader(:realm)
  def initialize(initial_name, initial_house, initial_realm)
    super(initial_name, initial_house, 200)
    @realm = initial_realm
    @hp = 1000
  end

  def introduce
    "I am #{@name.capitalize}, of House #{@house.capitalize}, lord of the realm of #{@realm.capitalize}, and I am a noble king."
  end

end

ned = King.new("Ned", 'Stark', 'North')
