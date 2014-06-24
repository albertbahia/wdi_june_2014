require_relative '../lib/cell.rb'

describe Cell do
  let(:cell) { Cell.new }
  it 'has a player' do
    expect(cell.player).to eq(0)
  end

  describe '#fill' do
    it 'fills the cell for player 1' do
      cell.fill(1)
      expect(cell.player).to eq(1)
    end

    it 'fills the cell for player 2' do
      cell.fill(2)
      expect(cell.player).to eq(2)
    end

    it 'does nothing for any other values' do
      cell.fill(14)
      expect(cell.player).to eq(0)
    end
  end

  describe '#filled?' do
    it 'returns false when it has not been played it' do
      expect(cell.filled?).to eq(false)
    end
  end

  describe '#clear' do
    it 'resets the cell to empty' do
      cell.fill(1)
      cell.clear
      expect(cell.filled?).to eq(false)
    end
  end

  describe '#display' do
    it 'contains an X for player 1' do
      cell.fill(1)
      expect(cell.display).to include('X')
    end

    it 'contains an O for player 1' do
      cell.fill(2)
      expect(cell.display).to include('O')
    end

    it 'contains neither X nor O if it has not been played' do
      expect(cell.display).not_to include('X')
      expect(cell.display).not_to include('O')
    end
  end
end
