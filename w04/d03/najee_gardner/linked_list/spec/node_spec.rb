require_relative 'spec_helper'
require_relative '../lib/node'

describe Node do
  let(:node1) { Node.new(10) }
  let(:node2) { Node.new(20) }

  describe '.new' do
    it "should be created with an integer value and no next element if only an integer is passed in" do
      expect(node1.class).to eq(Node)
    end

    it "should be created with a value and a next element if both an integer and node are passed in" do
      node3 = Node.new(20, node2)
      expect(node3.next).to eq(node2)
    end

    it "should be have a nil value for next if a non node is passed in" do
      node3 = Node.new(20, "boop")
      expect(node3.next).to eq(nil)
    end

  end

  describe '#value' do
    it "should return the value set when the node was initialized" do
      expect(node1.value).to eq(10)
    end
  end

  describe '#set_next' do
    it "should return true when a node is passed in" do
      expect(node1.set_next(node2)).to eq(true)
    end

    it "should return false when a non-node object is passed in" do
      expect(node1.set_next(10)).to eq(false)
    end
  end

  describe "#next" do
    it "should return the next node if one has been set" do
      node1.set_next(node2)
      result = node1.next
      expect(result).to eq(node2)
    end

    it "should return nil if no next node has been set" do
      result = node1.next
      expect(result).to eq(nil)
    end

  end

end
