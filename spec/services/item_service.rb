require 'rails_helper'

RSpec.describe ItemService do
  describe "instance methods" do 
    before(:each) do 
      @items = ItemService.new("4") 
    end

    it "instnace method of get_merchants will return a JSON hash of an item" do 
      results = @items.get_items_info
      expect(results).to be_a(Hash)
      expect(results[:data]).to be_a(Hash)
      expect(results[:data][:id].to_i).to be_a(Integer)
      expect(results[:data][:type]).to eq("item")
      expect(results[:data][:attributes]).to be_a(Hash)
      expect(results[:data][:attributes][:name]).to be_a(String)
      expect(results[:data][:attributes][:description]).to be_a(String)
      expect(results[:data][:attributes][:unit_price]).to be_a(Float)
      expect(results[:data][:attributes][:merchant_id]).to be_a(Integer)
    end
  end 
end 