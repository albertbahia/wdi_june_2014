require 'rails_helper'


describe "Cards" do

  it "shows existing cards when we visit the home page" do
    Card.create!(description: "write some tests", completed: true)
    Card.create!(description: "maek them pass", completed: false)

    visit('/')
    expect(page).to have_content("write some tests")
  end

end
