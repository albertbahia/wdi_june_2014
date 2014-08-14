require 'rails_helper'

describe "Cards", :js => true do

  xit "shows all cards when we visit the main page" do
    Card.destroy_all
    Card.create!(description: "write some tests", completed: true)
    Card.create!(description: "make them pass", completed: false)
    Card.create!(description: "refactor our code", completed: false)

  visit(root_path)
  save_and_open_page
  expect(page).to have_content("write some tests")


  end

  it "should add a card when the new card box is filled and add card is clicked" do
    starting_card_count = Card.count
    visit(root_path)
    fill_in('new-card-text', with: "Wash the dishes")
    click_button('Add Card')
    todo_list = find("#todo-column")
    save_and_open_page
    expect(todo_list).to have_content("Wash the dishes")
    expect(Card.count - starting_card_count).to eq(1)
  end

end
