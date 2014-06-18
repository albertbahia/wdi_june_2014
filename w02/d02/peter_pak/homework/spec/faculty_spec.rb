require_relative '../lib/faculty.rb'
require_relative '../lib/students.rb'

describe Faculty do

  let(:belding) { Faculty.new("Richard Belding", "Principal", "Hey! Hey! Hey! What is going on here?")}
  let(:zack) {Students.new("Zack Morris", "Time out!")}

  it 'has a name' do
    expect(belding.name).to eq("Richard Belding")
  end

  it 'has a role' do
    expect(belding.role).to eq("Principal")
  end

  it 'has a school' do
    expect(belding.school).to eq("Bayside High School")
  end

  it 'has a catchphrase' do
    expect(belding.catchphrase).to eq("Hey! Hey! Hey! What is going on here?")
  end



  describe '#give_detention' do
    it 'should raise student detention by 1' do
      belding.give_detention(zack)
      expect(zack.receive_detentions).to eq(1)
    end

  end

  describe '#lower_grade' do
    it 'should lower student grade by 1' do
      belding.lower_grade(zack)
      expect(zack.grade).to eq("B")
    end
  end

  describe '#raise_grade' do
    it 'should raise student grade by 1' do
      zack.grade = "B"
      belding.raise_grade(zack)
      expect(zack.grade).to eq("B")
    end
  end
end
