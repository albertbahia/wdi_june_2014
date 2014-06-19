require 'lib/minor_program.rb'

describe Program do
  let(:riz) { MinorProgram.new('Riz', 'collect_garbage()') }
  let(:dez) { MinorProgram.new('Dez', 'inspect_garbage()') }
  let(:sark) { Enforcer.new('Sark', 'monitor_programs()', 'Minor Program Enforcer') }

  it 'has a name' do
    expect(riz.name).to eq('Riz')
  end

  it 'has a file size' do
    expect(riz.file_size).to eq(256)
  end

  it 'has a primary function' do
    expect(riz.primary_function).to eq('collect_garbage()')
  end

  describe '#derezz' do
    it 'should not erase the attributes of other programs' do
      riz.derezz(dez)
      dez_info = [dez.name, dez.primary_function, dez.file_size]
      dez_info.each {|item| expect(['Dez', 'inspect_garbage()', 256]).to include(item)}
    end
  end


  describe '#self_derezz' do

    it 'should erase the attributes of itself' do
      riz.self_derezz
      riz_info = [riz.name, riz.primary_function, riz.file_size, riz.rogue_actions]
      riz_info.each {|item| expect(item).to eq(nil)}
    end

  end

  describe '#describe_function' do
    it 'should include the name and primary function if the output if there is one' do
      expect(riz.describe_function).to include('Riz')
      expect(riz.describe_function).to include('collect_garbage()')
    end

    it 'should include "derezzed" if no primary function exists' do
      riz.run_rogue_function('have_fun()')
      riz.run_rogue_function('have_fun()')
      riz.run_rogue_function('have_fun()')
      sark.derezz(riz)
      expect(mac.describe_function).to include('derezzed')
    end
  end

  describe '#run_primary_function' do
    it 'should include "running" and the primary function' do
      expect(riz.run_primary_function).to include('running')
      expect(riz.run_primary_function).to include('collect_garbage()')
    end
  end

  describe '#run_rogue_function' do
    it 'should add the element passed in to the rogue actions array' do
      riz.run_rogue_function('take_nap()')
      expect(riz.rogue_actions.first).to eq('take_nap()')
    end

    it 'should not add to rogue actions array if item passed in is the same as primary function' do
      riz.run_rogue_function('collect_garbage()')
      expect(riz.rogue_actions).to eq([])
    end
  end

  describe '#change_primary_function' do
    it 'should change only if the correct password is given' do
      riz.change_primary_function('endofline', 'go_home()')
      expect(riz.primary_function).to eq('collect_garbage()')
      riz.change_primary_function('hailthemc', 'go_home()')
      expect(riz.primary_function).to eq('go_home()')
    end
  end
end
