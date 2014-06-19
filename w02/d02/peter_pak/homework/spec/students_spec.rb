require_relative '../lib/students.rb'

describe Students do

  let(:jessie) { Students.new('Jessie Spano', "I'm so excited! I'm so.. scared.")}

  it 'has a name' do
    expect(jessie.name).to eq('Jessie Spano')
  end

  it 'has a role' do
    expect(jessie.role).to eq('Student')
  end

  it 'has a catchphrase' do
    expect(jessie.catchphrase).to eq("I'm so excited! I'm so.. scared.")
  end

  it 'has a school' do
    expect(jessie.school).to eq("Bayside High School")
  end

  it 'has a starting grade of A' do
    expect(jessie.grade).to eq("A")
  end

  it 'has a default hw completed of 0' do
    expect(jessie.hw).to eq(0)
  end

  it 'has a default classes cut of 0' do
    expect(jessie.classes_cut).to eq(0)
  end

  it 'has a starting detentions of 0' do
    expect(jessie.detentions).to eq(0)
  end




  describe '#complete_hw' do

    it 'should add hw += 1' do
      expect(jessie.complete_hw).to eq(1)
    end

    it 'should reset after 5' do
      jessie.complete_hw
      jessie.complete_hw
      jessie.complete_hw
      jessie.complete_hw
      jessie.complete_hw
      jessie.complete_hw
      expect(jessie.hw).to eq(1)
    end

    it 'should raise grade 1 after 5 hws completed' do
      jessie.hw = 5
      jessie.grade = "B"
      jessie.complete_hw
      expect(jessie.grade).to eq("A")
    end
  end

  describe '#cut_class' do
    it 'should increase classes_cut by 1' do
      jessie.cut_class
      expect(jessie.classes_cut).to eq(1)
    end

    it 'classes cut after 3rd = 1st of next cycle' do
      jessie.cut_class
      jessie.cut_class
      jessie.cut_class
      jessie.cut_class
      expect(jessie.classes_cut).to eq(1)
    end

    it 'should lower grade by 1 after 3 classes missed' do
      jessie.cut_class
      jessie.cut_class
      jessie.cut_class
      jessie.cut_class
      expect(jessie.grade).to eq("B")
    end
  end

end
