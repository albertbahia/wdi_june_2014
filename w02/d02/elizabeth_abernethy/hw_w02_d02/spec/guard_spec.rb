require_relative('../lib/guard.rb')

describe Guard do
  let(:george) {Human.new('George', 36, ['Pornstache', 'Mendez'], 'baton')}

  it 'has a name' do
    expect(george.name).to eq('George')
  end

  it 'has an age' do
    expect(george.age).to eq(36)
  end


  it 'has nicknames' do
    expect(george.nickname).to include(['Pornstache', 'Mendez'])
  end

  it 'has an arsenal' do
    expect(george.arsenal).to include('baton')
  end

  describe '#give_shot' do
    it 'adds a shot to your shot count for this month' do
      #....
    end
  end

  describe '#inspect' do
    it 'threatens prisoners to keep their rooms tidy'
    #...
    end
    it 'gives prisoner a shot if room is messy'
    #...
    end
  end
end
