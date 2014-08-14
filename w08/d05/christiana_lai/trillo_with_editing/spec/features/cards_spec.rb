require 'rails_helper'

describe "Cards", js: true do

  it "shows all cards when we visit the root page" do
    Card.destroy.all
    Card.create!(description: "write some tests", completed: false)
    Card.create!(description: "make them pass", completed: false)
    Card.create!(description: "refactor our code", completed: false)

    visit(root_path)
    save_and_open_page

    expect(page).to have_content("write some tests")

  end

  it "should add a card when the new card box is filled and add card is clicked" do
    visit(root_path)
    fill_in('new-card-text', with: "Wash the dishes")
    click_button('Add Card')
    todo_list = find("#todo-column")
    expect(page).to have_content ("Wash the dishes")

    new_Cards = Card.where(description: "Wash the dishes").size
    expect(new_cards).to_eq(1)
  end

end
