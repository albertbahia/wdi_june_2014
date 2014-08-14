require 'rails_helper'

describe 'Cards', js: true do

  xit 'shows all cards when we visit the main page' do
    Card.create!(description: "write some test", completed: true)
    Card.create!(description: "make them pass", completed: false)
    Card.create!(description: 'refactor our code', completed: false)

    visit(root_path)
    save_and_open_page

    expect(page).to_have_content('write some tests')
  end

  it 'should add a card when the new card box if filled and add card is clicked' do
    visit(root_path)

    fill_in('new-card-text', with: "wash the dishes")


    click_button('Add Card')
    todo_list = find('#todo-column')
    expect(todo_list).to have_content('wash the dishes')
    expect(page).to have_content 'Wash the dishes'
    new_card = Card.where(description: 'wash the dishes').size
    expect(new_card).to eq(1)
  end
end
