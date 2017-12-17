require 'rails_helper'

describe 'As a user' do
  describe 'I can go to my user account and I click the link to create idea' do
    it 'will take me to /ideas/new and will display a form with an option to create account' do
      visit new_idea_path

      fill_in"idea[title]", with: "FLYING CARS"

      click_on("Create Idea")

      expect(current_path).to eq(idea_path(Idea.last.id))

      expect(page).to have_content("FLYING CARS")
    end
  end
end