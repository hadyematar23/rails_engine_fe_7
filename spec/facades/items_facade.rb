require 'rails_helper'

RSpec.describe ItemsFacade do
  describe "instance methods" do 
    before(:each) do 
      @items = ItemsFacade.new 
    end
    it "retrieve merchants returns a single item with certain attributes" do 
      results = @items.get_item_info("4")
      expect(results).to be_an_instance_of(Item)
      expect(results.id.to_i).to be_a(Integer)
      expect(results.name).to be_a(String)
      expect(results.description).to be_a(String)
      expect(results.unit_price).to be_a(Float)
    end 
  end 
end 