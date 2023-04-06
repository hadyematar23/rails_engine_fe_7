require 'rails_helper'

RSpec.describe MerchantItemService do
  describe "instance methods" do 
    before(:each) do 
      @merchant_items = MerchantItemService.new("4") 
    end

    it "instnace method of get_merchants will return a JSON hash of merchants" do 
      results = @merchant_items.get_items
      expect(results).to be_a(Hash)
      expect(results[:data]).to be_a(Array)
      results[:data].each do |individual_hash|
        expect(individual_hash).to be_a(Hash)
        expect(individual_hash[:id].to_i).to be_a(Integer)
        expect(individual_hash[:type]).to eq("item")
        expect(individual_hash[:attributes]).to be_a(Hash)
        expect(individual_hash[:attributes][:name]).to be_a(String)
        expect(individual_hash[:attributes][:description]).to be_a(String)
        expect(individual_hash[:attributes][:unit_price]).to be_a(Float)
        expect(individual_hash[:attributes][:merchant_id]).to be_a(Integer)
      end
    end
  end 
end 