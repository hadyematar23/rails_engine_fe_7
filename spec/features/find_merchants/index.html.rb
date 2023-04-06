require 'rails_helper'

RSpec.describe 'find_merchants, index', type: :feature do
  describe "as a visitor" do
    describe "when searches index" do
      it "should see a list of merchants by name" do 

        visit root_path
        expect(page).to have_content("Search for Merchant by fragment")
        expect(page).to have_selector('form')
        expect(page).to have_field('search_term', type: 'text')

        fill_in "search_term", with: "sm"
        click_button "Search"

        expect(page).to have_content("Search Results")

        within("div#merchant_1") do 
          expect(page).to have_content(/\S+/)
        end 
      end
    end
  end 
end 