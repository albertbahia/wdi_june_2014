require_relative '../lib/program.rb'

describe Program do
  let(:flynn_os) { Program.new('Flynn 1.0', 256) }
  let(:mac) { Program.new('Leopard', 256) }

  it 'has a name' do
    expect(flynn_os.name).to eq('Flynn 1.0')
  end

  it 'has a file size' do
    expect(flynn_os.file_size).to eq(256)
  end

  it 'has a primary function' do
    expect(flynn_os.primary_function).to eq('run_sub_programs()')
  end

  it 'has an attack' do
    expect(flynn_os.attack).to eq(9000)
  end

  describe '#derezz' do
    it 'should erase the attributes of other programs' do
      flynn_os.derezz(mac)
      mac_info = [mac.name, mac.primary_function, mac.file_size]
      mac_info.each {|item| expect(item).to eq(nil)}
    end
  end


  describe '#self_derezz' do

    it 'should erase the attributes of itself' do
      flynn_os.self_derezz
      flynn_info = [flynn_os.name, flynn_os.primary_function]
      flynn_info.each {|item| expect(item).to eq(nil)}
    end

  end

  describe '#describe_function' do
    it 'should include the name and primary function if the output if there is one' do
      expect(flynn_os.describe_function).to include('Flynn 1.0')
      expect(flynn_os.describe_function).to include('run_sub_programs()')
    end

    it 'should include "derezzed" if no primary function exists' do
      flynn_os.derezz(mac)
      expect(mac.describe_function).to include('derezzed'.upcase)
    end
  end

  describe '#run_primary_function' do
    it 'should include "running" and the primary function' do
      expect(flynn_os.run_primary_function).to include('running')
      expect(flynn_os.run_primary_function).to include('run_sub_programs()')
    end
  end
end
