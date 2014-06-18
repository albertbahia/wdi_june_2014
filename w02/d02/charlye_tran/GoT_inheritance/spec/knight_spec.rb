require_relative('../lib/knight.rb')
require_relative('../lib/king.rb')

describe Knight do
  let(:brienne) { Knight.new('Brienne', 'Tarth', 'Oathkeeper') }


  it 'has a name' do
    expect(brienne.name).to eq('Brienne')
  end

  it 'has a house name' do
    expect(brienne.house).to eq('Tarth')
  end

  it 'has a sword name' do
    expect(brienne.sword_name).to eq('Oathkeeper')
  end

  it 'has a default strength of 50' do
    expect(brienne.strength).to eq(50)
  end

  it 'has a default hp of 500' do
    expect(brienne.hp).to eq(500)
  end
  obj = Object.new
  let(:ned) {King.new('Ned', 'Stark', 'North')}
  let(:sam) {King.new('Sam', 'Baratheon', 'West')}

  describe 'loyalty to kings' do
    describe '#pledge_loyalty' do
      it 'should return true if a king object is given' do
        expect(brienne.pledge_loyalty(ned)).to eq(true)
      end
      it 'should return false if a non-king object is given' do
        expect(brienne.pledge_loyalty(obj)).to eq(false)
      end
    end

    describe '#king_name' do

        it "should return a king's name if loyalty has been pledged" do
          brienne.pledge_loyalty(ned)
          expect(brienne.king_name(ned)).to include('Ned')
        end

        it "should return nil if loyalty has never been pledged" do
          expect(brienne.king_name(nil)).to eq(nil)
        end

        it "should return the new king's name after loyalty has been pledged to a new king" do

          brienne.pledge_loyalty(sam)
          expect(brienne.king_name(sam)).to include(sam.name)
          brienne.pledge_loyalty(ned)
          expect(brienne.king_name(ned)).to include(ned.name)
        end
    end
  end

  describe '#introduce' do
    it 'introduces the character with name and house' do
      expect(brienne.introduce).to include(brienne.name)
      expect(brienne.introduce).to include(brienne.house)
    end
    it 'includes the fact that it is an honorable knight' do
      expect(brienne.introduce).to include("honorable knight")
    end
    it 'includes the name of the king it is loyal to (if one is present)' do
      ned = King.new("Ned", "Stark", "North")
      expect(brienne.introduce.include?(ned.name)).to eq(false)
      brienne.pledge_loyalty(ned)
      expect(brienne.introduce).to include(ned.name)
    end
  end

end
