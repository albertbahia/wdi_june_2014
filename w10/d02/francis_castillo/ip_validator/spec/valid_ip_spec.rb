require 'spec_helper'
require_relative '../lib/valid_ip'

# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between `0.0.0.0` and
# `255.255.255.255` is valid).

describe "#valid_ip" do
  it "returns true if input is between '0.0.0.0' and '255.255.255.255'"do
    expect(valid_ip("10.10.10.10")).to be true
  end
  it "returns false if it does not meet those requirements"do
    expect(valid_ip("30.300.3000.3")).to be false
  end
end
