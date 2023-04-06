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

      it "click on the link and you will see the items for that merchant" do 
        visit "/merchants"
        
        within("div#merchant_1") do 
          first('a').click
        end 
        save_and_open_page
        within("div#merchant_name") do 
          expect(page).to have_content(/[\s\S]+/)
        end

        within("div#item_1") do 
          within("div#name") do 
            expect(page).to have_content(/[\s\S]+/)
          end

          within("div#description") do 
            expect(page).to have_content(/[\s\S]+/)
          end

          within("div#unit_price") do 
            expect(page).to have_content(/[\s\S]+/)
          end
        end
        
        
      end
    end
  end 
end 