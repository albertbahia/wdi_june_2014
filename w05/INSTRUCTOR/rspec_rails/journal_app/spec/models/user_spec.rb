require 'rails_helper'

describe User do
  let(:hari) { User.new( username: "superman",
                         first_name: "Hari",
                         password: "hunter2",
                         password_confirmation: "hunter2")}

  it "is valid with a username, email, and password" do
    expect(hari).to be_valid
  end

  it "is invalid without a first name" do
    expect(User.new(first_name: nil)).to have(1).errors_on(:first_name)
  end

  it "is invalid without a username" do
    expect(User.new(username: nil)).to have(1).errors_on(:username)
  end

  it "is invalid without a unique username" do
    hari.save!
    mck = User.new( username: "superman",
            first_name: "McKenneth",
            password: "correcthorsebatterystaple",
            password_confirmation: "correcthorsebatterystaple")
    expect(mck).to have(1).errors_on(:username)
  end

end
