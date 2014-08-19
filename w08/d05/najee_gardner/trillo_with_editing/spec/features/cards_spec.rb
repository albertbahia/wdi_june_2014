require 'rails_helper'

describe 'Cards', js: true do
  xit 'shows all existing cards when we visit the main page' do
    Card.create!(description: "write some tests", completed: true);
    Card.create!(description: "make them pass", completed: false);
    Card.create!(description: "refactor code", completed: false);

    visit root_path
    expect(page).to have_content("write some tests")
  end

  it 'should add a card when the new card box is filled in and add card is clicked' do
    visit root_path
    fill_in 'new-card-text', with: 'Wash the dishes'
    click_button 'Add Card'
    todo_list = find('#todo-column')
    expect(page).to have_content 'Wash the dishes'
    expect(todo_list).to have_content 'Wash the dishes'


  end


end
