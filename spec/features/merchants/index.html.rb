require 'rails_helper'

RSpec.describe 'merchants index, index', type: :feature do
  describe "as a visitor" do
    describe "when visits merchants index" do
      it "should see a list of merchants by name" do 

        visit "/merchants"
        expect(page).to have_content("List of Merchants")
        within("div#merchant_1") do 
          expect(page).to have_link(href: /\S+/)
          expect(page).to have_content(/\S+/)
        end 
      end
    end
  end 
end 