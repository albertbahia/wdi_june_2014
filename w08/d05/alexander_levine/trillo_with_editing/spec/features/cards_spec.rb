require 'rails_helper'

describe "Cards", js: true do

  it "shows existing cards when we visit the main page" do
    Card.destroy_all
    Card.create!(description: "write some tests", completed: false)
    Card.create!(description: "make them pass", completed: false)
    Card.create!(description: "refactor our code", completed: false)

    visit root_path
    save_and_open_page
    expect(page).to have_content("write some tests")
  end

  it "should add a card when a new card bix is filled and add card is clicked" do
    starting_card_count = Card.count
    visit root_path
    fill_in('new-card-text', with: "Wash the dishes")
    click_button('Add Card')
    todo_list = find('#todo-column')
    expect(todo_list).to have_content("Wash the dishes")
    new_cards = Card.where(description: "Wash the dishes").size
    expect(new_cards).to eq(1)
  end

end
