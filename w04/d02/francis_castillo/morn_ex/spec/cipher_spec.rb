require_relative '../lib/cipher'

describe CesarCipher do
  cipher = CesarCipher.new
  it 'encrypts 13 position' do
    expect(cipher.ciph("hello")).to(eq("uryyb"))
  end

  it 'encrypts 13 position 2 words' do
    expect(cipher.ciph("crgre")).to(eq("peter"))
  end

  it 'encrypts 13 position 2 words' do
    expect(cipher.ciph("hello peter")).to(eq("uryyb crgre"))
  end

end
