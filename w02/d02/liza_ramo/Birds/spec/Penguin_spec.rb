require_relative '../lib/Penguin.rb'

describe Penguin do
  let(:snoopy) { Penguin.new('Snoopy', 13, 'tropics', 7, 'brown')}

  it 'has a name' do
    expect(snoopy.name).to eq('Snoopy')
  end

  it 'has an age' do
    expect(snoopy.age).to eq(13)
  end

  it 'has a location' do
    expect(snoopy.location).to eq('tropics')
  end

  it 'has a speed' do
    expect(snoopy.speed).to eq(7)
  end

   it 'has an eye color' do
     expect(snoopy.eye_color).to eq('brown')
   end

   describe '#get_food' do
     it 'got food' do
       expect(snoopy.get_food).to eq(true)
     end
   end

   describe '#swim' do
     it 'swam' do
       expect(snoopy.swim).to eq('Im swimming!')
     end
   end

    describe '#fight' do
      it 'fought' do
        expect(snoopy.fight).to eq('Ill kill you!')
    end


end
