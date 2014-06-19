require_relative('../lib/enchanted.rb')

describe Enchanted do
  let(:boo) { Enchanted.new('Wicked Witch of the West', 'Cinderella') }
  
  it 'has an enchanter' do
    expect(boo.enchanter).to eq('Wicked Witch of the West')
  end
end

  describe '#enchantment' do
    let(:boo) { Fuji.new( 'Wicked Witch of the West', 'Cinderella') }
    expect(boo.enchantment).to include("Gotcha!")
    end
    
    describe '#enchants' do
    expect(boo.enchants).to eq('Cinderella')
    end
end
