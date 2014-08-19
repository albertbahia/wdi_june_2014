require 'rails_helper'

describe "Cards", js: true do
  xit "shows existing cards when we visit the main page" do
    Card.destroy_all
    Card.create!(description: "write some tests", completed: true)
    Card.create!(description: "make them pass", completed: false)
    Card.create!(description: "refactor our code", completed: false)

    visit(root_path)
    # save_and_open_page
    expect(page).to have_content("write some tests")
  end

  it "should add a card when the new card box is filled and an add card is clicked" do
    visit(root_path)
    fill_in('new-card-text', with: 'wash the dishes')
    click_button('Add Card')
    save_and_open_page
    todo_list = find("#todo-column")
    expect(todo_list).to have_content("wash the dishes")

    new_cards = Card.where(description: "wash the dishes").size
    expect(new_cards).to eq(1)
  end




end
