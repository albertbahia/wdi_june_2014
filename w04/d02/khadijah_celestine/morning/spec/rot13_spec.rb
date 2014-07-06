require_relative '../lib/rot13'

describe '#encode' do
	it ' must work for hello ' do
		expect(encode('hello')).to eq('uryyb')
	end
	it ' must work for peter ' do
		expect(encode('peter')).to eq('crgre')
	end
	it ' must work for wdinstagram ' do
		expect(encode('wdinstagram')).to eq('jqvafgntenz')
	end
	it ' must work for jqvafgntenz ' do
		expect(encode('jqvafgntenz')).to eq('wdinstagram')
	end
end
