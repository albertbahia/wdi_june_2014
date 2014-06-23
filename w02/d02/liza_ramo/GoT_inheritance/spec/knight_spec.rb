

require_relative('../lib/knight.rb')

describe Knight do
  let(:brienne) { Knight.new('Brienne', 'Tarth', 'Oathkeeper') }
  let(:ned) { King.new('Ned', 'Stark', 'North') }
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

 describe 'loyalty to kings' do
   describe '#pledge_loyalty' do
     it 'should return true if a king object is given' do
        king = King.new('Ned', 'Stark', 'North')
        expect(brienne.pledge_loyalty(king)).to eq(true)
     end
     it 'should return false if a non-king object is given' do
        expect(brienne.pledge_loyalty(!king)).to eq(false)
     end
   end
   describe '#king_name' do
     it "should return a king's name if loyalty has been pledged" do
       expect(brienne.king_name(ned)).to eq('Ned')
        end
     it "should return nil if loyalty has never been pledged" do
       expect(brienne.king_name("Liza")).to eq(nil)
        end
     it "should return the new king's name after loyalty has been pledged to a new king" do
        tywin = King.new('Tywin', 'Lannister', 'Casterly Rock')
        brienne.pledge_loyalty(ned)
        brienne.pledge_loyalty(tywin)
        expect(brienne.loyalty).to eq('Tywin')
      end
    end
 end

   describe '#introduce' do
     it 'introduces the character with name and house' do
        expect(brienne.introduce).to include('Brienne')
        expect(brienne.introduce).to include('Tarth')
     end
     it 'includes the fact that it is an honorable knight' do
        expect(brienne.introduce).to include('I am an honerable knight')
     end
     it 'includes the name of the king it is loyal to (if one is present)' do
     end
   end

end
