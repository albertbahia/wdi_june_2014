require_relative('../lib/human.rb')

describe Human do 
	let(:piper) { Human.new("Piper", 32, "Female", 10) }

	it 'has name' do
		expect(piper.name).to eq('Piper')
	end 
	it 'has age' do
		expect(piper.age).to eq(32)
	end 
	it 'which gender' do
		expect(piper.gender).to eq('Female')
	end 
	it 'what is his or her health' do
		expect(piper.health).to eq(10)
	end 

end 