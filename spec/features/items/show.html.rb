require 'rails_helper'

RSpec.describe 'items show, show', type: :feature do
  describe "as a visitor" do
    describe "when visits items show" do
      it "visit items and click on the item's name, should then go to the items show page and see the item's description, name, unit price" do 

        visit "/items/4"

        expect(current_path).to match(/\/items\/\d+/)
        expect(page).to have_content("Item Show Page")

        within("div#description") do 
          expect(page).to have_content(/[\s\S]+/)
        end

        within("div#name") do 
          expect(page).to have_content(/[\s\S]+/)
        end

        within("div#unit_price") do 
          expect(page).to have_content(/[\s\S]+/)
        end
      end

      it "visit merchant show page (where it lists all of the items) and click on an item name and you will be taken to the item's show page" do 

        visit "/merchants/6"

        within("div#item_1") do 
          first('a').click
        end 
        
        expect(page).to have_content("Item Show Page")

        within("div#description") do 
          expect(page).to have_content(/[\s\S]+/)
        end

        within("div#name") do 
          expect(page).to have_content(/[\s\S]+/)
        end

        within("div#unit_price") do 
          expect(page).to have_content(/[\s\S]+/)
        end
      end
    end
  end 
end 