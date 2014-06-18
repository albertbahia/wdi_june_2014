class Knight < Human

  def initialize(name, house, sword)
    super(name, house, nil)
    @sword = sword
    @hp = 500
    @strength = 50
    @loyal_to = nil
  end

  def sword
    return @sword.split.map(&:capitalize).join(' ')
  end

  def pledge_loyalty(loyal_to_whom)
    if loyal_to_whom.king == true
      @loyal_to = loyal_to_whom.name
      true
    else
      false
    end
  end

  def king_name
    return @loyal_to
  end

  def introduce
    intro_string = "I am #{name} of house #{house}. Just an honorable knight."
    if @loyal_to == false
    else
      intro_string += "Fiercely loyal to King #{king_name}."
    end
    return intro_string
  end


end









# describe Knight do
#   let(:brienne) { Knight.new('Brienne', 'Tarth', 'Oathkeeper') }
#
#   it 'has a name' do
#   end
#
#   it 'has a house name' do
#   end
#
#   it 'has a sword name' do
#   end
#
#   it 'has a default strength of 50' do
#   end
#
#   it 'has a default hp of 500' do
#   end
#
#   describe 'loyalty to kings' do
#     describe '#pledge_loyalty' do
#       it 'should return true if a king object is given' do
#         #
#       end
#       it 'should return false if a non-king object is given' do
#         #
#       end
#     end
#     describe '#king_name' do
#         it "should return a king's name if loyalty has been pledged" do
#         end
#         it "should return nil if loyalty has never been pledged" do
#         end
#         it "should return the new king's name after loyalty has been pledged to a new king" do
#         end
#     end
#
#   end
#
#   describe '#introduce' do
#     it 'introduces the character with name and house' do
#     end
#     it 'includes the fact that it is an honorable knight' do
#     end
#     it 'includes the name of the king it is loyal to (if one is present)' do
#     end
#   end
#
# end
