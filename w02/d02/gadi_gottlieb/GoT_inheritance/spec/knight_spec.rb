require_relative('../lib/knight.rb')
require_relative('../lib/king.rb')
require_relative('../lib/peasant.rb')

describe Knight do
  let(:brienne) { Knight.new('Brienne', 'Tarth', 'Oathkeeper') }

  it 'has a name' do
    expect(brienne.name).to eq("Brienne")
  end

  it 'has a house name' do
    expect(brienne.house).to eq("Tarth")
  end

  it 'has a sword name' do
    expect(brienne.sword).to eq("Oathkeeper")
  end

  it 'has a default strength of 50' do
    expect(brienne.strength).to eq(50)
  end

  it 'has a default hp of 500' do
    expect(brienne.hp).to eq(500)
  end

  describe 'loyalty to kings' do
    let(:ned) { King.new('Ned', 'Stark', 'North') }
    let(:brosefus) { King.new('Brosefus', 'Sparta', 'Persian') }
    let(:piers) { Peasant.new('Piers', 'Piers Parsnip Farm') }

    describe '#pledge_loyalty' do
      it 'should return true if a king object is given' do
        expect(brienne.pledge_loyalty(ned)).to eq(true)
      end
      it 'should return false if a non-king object is given' do
        expect(brienne.pledge_loyalty(piers)).to eq(false)
      end
    end
    describe '#king_name' do
      it "should return a king's name if loyalty has been pledged" do
        brienne.pledge_loyalty(ned)
        expect(brienne.king_name).to eq(ned.name)
        end
      it "should return nil if loyalty has never been pledged" do
        expect(brienne.king_name).to eq(nil)
        end
      it "should return the new king's name after loyalty has been pledged to a new king" do
        brienne.pledge_loyalty(ned)
        brienne.pledge_loyalty(brosefus)
          expect(brienne.king_name).to eq(brosefus.name)
        end
    end

  end

  describe '#introduce' do
    let(:ned) { King.new('Ned', 'Stark', 'North') }

    it 'introduces the character with name and house' do
      expect(brienne.introduce).to include(brienne.name)
      expect(brienne.introduce).to include(brienne.house)
    end
    it 'includes the fact that it is an honorable knight' do
      expect(brienne.introduce).to include("I am an honorable knight.")
    end
    it 'includes the name of the king it is loyal to (if one is present)' do
      brienne.pledge_loyalty(ned)
      expect(brienne.introduce).to include("Ned")
    end
  end

end
