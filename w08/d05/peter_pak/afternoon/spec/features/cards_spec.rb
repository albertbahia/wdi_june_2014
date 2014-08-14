require 'rails_helper'

describe 'Cards', js: true do 

	it 'shows existing cards when we visit the main page' do
		Card.create({description: "write some tests", completed: true})
		Card.create({description: "make them pass", completed: false})
		Card.create!({description: "refactor our code", completed: false})

		visit(root_path)
		wait_for_ajax
		save_and_open_page
		expect(page).to have_content("write some tests")
	end


end