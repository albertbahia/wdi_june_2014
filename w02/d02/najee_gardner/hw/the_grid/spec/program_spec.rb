require 'lib/program.rb'

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


  describe '#delete_program' do

    it 'should return true if Program object is passed in' do
      expect(flynn_os.delete_program(mac)).to eq(true)
    end

    it 'should return false if any other object is passed in' do
      expect(flynn_os.delete_program(1)).to eq(false)
    end
  end

  describe '#describe_function' do
    it 'should include the name and primary function if the output if there is one' do
      expect(flynn_os.describe_function).to include('Flynn 1.0')
      expect(flynn_os.describe_function).to include('run_sub_programs()')
    end

    it 'should include "deleted" if no primary function exists' do
      flynn_os.delete(mac)
      expect(mac.describe_function).to include('deleted')
    end
  end

  describe '#run_primary_function' do
    it 'should include "running" and the primary function' do
      expect(flynn_os.run_primary_function).to include('running')
      expect(flynn_os.run_primary_function).to include('run_sub_programs()')
    end
  end
end
