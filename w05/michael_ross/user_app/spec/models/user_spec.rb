require 'rails_helper'

describe User do
  let(:hari) { User.create(username: "batman", first_name: "Hari", password: "abc", password_confirmation: "abc") }
  let(:mck) { User.create(username: "superman", first_name: "McKenneth", password: "def", password_confirmation: "def") }
  it "it is valid when created with a valid username and first name and password" do
    hari = User.create(username: "batman", first_name: "Hari", password: "abc", password_confirmation: "abc")
    expect(hari.valid?).to eq(true)
  end

  it "has a username property" do
    mck = User.create(username: "superman", first_name: "McKenneth", password: "def", password_confirmation: "def")
    expect(mck.username).to eq("superman")
  end

  it "validates the presence of the user" do
    adam = User.create(username: nil)
    adam.valid?
    expect(adam.errors.messages[:username].size).to eq(1)
  end

  # it "validates the uniqueness of username" do
  #   hari.save!
  #   adam = User.create(username: "batman", first_name: "Adam", password: "abc", password_confirmation: "abc")
  #   adam.valid?
  #   expect(adam.errors.messages[:username].size).to eq(1)
  # end

  it { is_expected.to validate_uniqueness_of(:username) }
  # shoulda matcher test

end
