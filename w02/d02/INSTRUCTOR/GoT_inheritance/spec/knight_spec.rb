require_relative('../lib/knight.rb')

describe Knight do
  let(:brienne) { Knight.new('Brienne', 'Tarth', 'Oathkeeper') }

  it 'has a name' do
  end

  it 'has a house name' do
  end

  it 'has a sword name' do
  end

  it 'has a default strength of 50' do
  end

  it 'has a default hp of 500' do
  end

  describe 'loyalty to kings' do
    describe '#pledge_loyalty' do
      it 'should return true if a king object is given' do
        #
      end
      it 'should return false if a non-king object is given' do
        #
      end
    end
    describe '#king' do
        it "should return a king object if loyalty has been pledged" do
        end
        it "should return nil if loyalty has never been pledged" do
        end
        it "should return the new king after loyalty has been pledged to a new king" do
        end
    end

  end

  describe '#introduce' do
    it 'introduces the character with name and house' do
    end
    it 'includes the fact that it is an honorable knight' do
    end
    it 'includes the name of the king it is loyal to (if one is present)' do
    end
  end

end
