class King < Human

  def initialize(name, house, realm)
    super(name, house, nil)
    @realm = realm
    @strength = 200
    @hp = 1000
    @king = true
  end

  def king
    return @king
  end
  
  def realm
    return @realm
  end

  def introduce
    "I am the noble King #{name} of the #{house} house of #{realm}"
  end

end









#
# let(:ned) { King.new('Ned', 'Stark', 'North') }
#
# it 'has a name' do
# end
#
# it 'has a house' do
# end
#
# it 'has a realm (aka kingdom)' do
# end
#
# it 'has a default strength of 200' do
# end
#
# it 'has a default hp of 1000' do
# end
#
# describe '#introduce' do
#   it 'introduces the king with name, house, and realm' do
#   end
#   it 'includes the fact that it is an noble king' do
#   end
# end
