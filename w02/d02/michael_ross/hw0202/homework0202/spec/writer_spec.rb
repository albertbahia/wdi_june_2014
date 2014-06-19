require_relative('../lib/writer.rb')

describe Writer do
  let(:norman) {Writer.new('Norman Mailer', 'new journalism', 'The Naked and the Dead')}

  it 'has a name' do
    expect(norman.name).to eq('Norman Mailer')
  end

  it 'has a genre' do
    expect(norman.genre).to eq('new journalism')
  end

  it 'has a book' do
    expect(norman.book).to eq('The Naked and the Dead')
  end

  describe '#introduce' do
    it 'introduces the writer with name, genre, & first book' do
      expect(norman.introduce).to include('Norman Mailer')
      expect(norman.genre).to include('new journalism')
      expect(norman.book).to include('The Naked and the Dead')
    end
  end

end
