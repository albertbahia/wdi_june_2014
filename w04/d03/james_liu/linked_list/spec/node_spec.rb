require_relative 'spec_helper'
require_relative '../lib/node'

describe Node do
  let(:node1) { Node.new(10) }
  let(:node2) { Node.new(20) }

  describe '.new' do
    it "can be instantiated with an integer value" do     
      expect(node1.class).to eq(Node)
    end
  end

  describe '#value' do
    it "has an integer value set during instantiation" do
      expect(node1.value).to eq(10)
      expect(node2.value).to eq(20)
    end
  end

  describe "#set_next" do
    it "should return true when a node object is passed in" do
      expect(node1.set_next(node2)).to eq(true)
    end

    it "should return false and do nothing when a non-node object is passed in" do
      expect(node1.set_next(10)).to eq(false)
    end
  end

  describe "#next" do
    it "should return nil if no node has been set as the next" do
      expect(node1.next).to eq(nil)
    end

    it "should return the next node if one has been set" do
      node1.set_next(node2)
      expect(node1.next).to eq(node2)    
    end
  end

end
