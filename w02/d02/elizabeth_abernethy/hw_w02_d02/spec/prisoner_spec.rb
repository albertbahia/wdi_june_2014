require_relative('../lib/prisoner.rb')

describe Prisoner do
  let(:galina) {Human.new('Galina', 42, 'Red', 'kitchen knife')}

  it 'has a name' do
    expect(galina.name).to eq('Galina')
  end

  it 'has an age' do
    expect(galina.age).to eq(42)
  end


  it 'has nicknames' do
    expect(galina.nickname).to include('Red')
  end

  it 'has an arsenal' do
    expect(galina.arsenal).to include('kitchen knife')
  end

  describe '#get_job' do
    it 'assigns a job title to a prisoner' do
      #...
    end
  end

  describe '#spend_commissary' do
    it 'removes commissary to a prisoners account' do
      #....
    end
  end

  describe '#get_commissary' do
    it 'adds commissary to a prisoners account' do
      #...
    end
  end
end
