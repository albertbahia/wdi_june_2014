require_relative('../lib/aynrand.rb')

describe Aynrand do
  let(:ayn) { Aynrand.new('Ayn Rand', 'Philosophy', 'The Fountainhead')}
  it 'has a name' do
    expect(ayn.name).to eq('Ayn Rand')
  end
  it 'has a genre' do
    expect(ayn.genre).to eq('Philosophy')
  end
  it 'has a book' do
    expect(ayn.book).to eq('The Fountainhead')
  end

  it 'has a death' do
    expect(ayn.death).to eq(1982)
  end

  describe '#favorite_book' do
    it 'has a book' do
      expect(ayn.favorite_book).to eq('Atlas Shrugged')
    end
  end


end
