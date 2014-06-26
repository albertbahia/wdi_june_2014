require_relative '../lib/cell.rb'

describe Cell do
  let(:test_cell) { Cell.new(1, 1) }

  it 'should have a row' do
    expect(test_cell.row).to eq(1)
  end

  it 'should have a column' do
    expect(test_cell.col).to eq(1)
  end

  it 'should have a value' do
    expect(test_cell.value).to eq(nil)
  end

  describe '#is_empty?' do
    it 'should return true if cell hasn not been marked yet' do
      expect(test_cell.is_empty?).to eq(true)
    end

    it 'should return false if cell has been marked' do
      test_cell.fill_in('X')
      expect(test_cell.is_empty?).to eq(false)
    end
  end

  describe '#fill_in' do
    it 'should set cell value to input value' do
      test_cell.fill_in('O')
      expect(test_cell.value).to eq('O')
    end

    it 'should allow only X or O as input value' do
      test_cell.fill_in('qwerty')
      expect(test_cell.value).to eq(nil)
    end
  end




end
