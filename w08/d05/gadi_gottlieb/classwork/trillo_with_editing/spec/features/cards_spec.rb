require 'rails_helper'

describe "Cards", js: true do

  xit "shows existing cards when we visit the main page" do
    Card.destroy_all
    Card.create!(description: "write some tests", completed: true)
    Card.create!(description: "write some tests", completed: false)
    Card.create!(description: "make them pass", completed: true)
    Card.create!(description: "refactor our code", completed: false)

    visit(root_path)
    save_and_open_page

    expect(page).to have_content("write some tests")

  end

  it "should add a card when the new card box is filled and and add card is clicked" do
    visit(root_path)
    fill_in('new-card-test', with: "Wash the dishes")
    click_button('Add Card')
    save_and_open_page
    expect(page).to have_content "Wash the dishes"
  end


end
