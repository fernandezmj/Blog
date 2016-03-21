require 'rails_helper'

feature "Create Post", js: true do
	scenario 'with valid args' do
		visit new_post_path

		fill_in "Title", with: "wot"
		fill_in "Body", with: "watta"

		click_button 'Create Post'
		expect(page).to have_content 'wat'
	end

	scenario 'with invalid args' do
		visit new_post_path

		fill_in "Title", with: nil
		fill_in "Body", with: "watta"

		click_button 'Create Post'
		expect(page).to have_content "MY BLOGS"
	end
end