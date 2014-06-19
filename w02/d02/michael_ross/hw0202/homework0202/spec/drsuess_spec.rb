require_relative('../lib/drsuess.rb')

describe Drsuess do
  let(:dr) {Drsuess.new('Dr. Suess', 'Children', 'The Cat in the Hat')}
  it 'has a name' do
    expect(dr.name).to eq('Dr. Suess')
  end

  it 'has a genre' do
    expect(dr.genre).to eq('Children')
  end

  it 'has a book' do
    expect(dr.book).to eq('The Cat in the Hat')
  end

  it 'has a number of languages' do
    expect(dr.languages).to eq(15)
  end

  describe '#update_languages' do
    it 'shows current number of languages translated' do
      expect(dr.update_languages).to eq(dr.languages)
    end
  end

end
