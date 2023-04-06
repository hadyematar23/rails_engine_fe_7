require 'rails_helper'

RSpec.describe 'merchants index, index', type: :feature do
  describe "as a visitor" do
    describe "when visits merchants index" do

      it "click on the link and you will see the items for that merchant" do 
        visit "/merchants"
        
        within("div#merchant_1") do 
          first('a').click
        end 
        expect(current_path).to match(/\/merchants\/\d+/)

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