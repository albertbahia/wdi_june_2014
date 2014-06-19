require_relative('../lib/computer.rb')

describe Computer do
  describe "it can be turned on or off" do
    it "should be created in an off state" do
      compy = Computer.new("English", 2, "Mac")
      expect(compy.status).to eq(false)
    end
    it "should go from off to on when the power button is pushed" do
      compy = Computer.new("English", 2, "Mac")
      expect(compy.status).to eq(false)
      compy.push_power_button
      expect(compy.status).to eq(true)
    end
    it "should go from on to off when the power button is pushed" do
      compy = Computer.new("English", 2, "Mac")
      compy.push_power_button
      expect(compy.status).to eq(true)
      compy.push_power_button
      expect(compy.status).to eq(false)      
    end

  end
end
