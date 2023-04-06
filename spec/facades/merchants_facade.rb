require 'rails_helper'

RSpec.describe MerchantsFacade do
  describe "instance methods" do 
    before(:each) do 
      @merchants = MerchantsFacade.new 
    end
    it "retrieve merchants returns list of merchant objects with certain attributes" do 
      results = @merchants.retreive_merchants

      expect(results).to be_a(Array)

      results.each do |merchant|
        expect(merchant).to be_an_instance_of(Merchant)
        expect(merchant.id.to_i).to be_a(Integer)
        expect(merchant.name).to be_a(String)
      end
    end

    it "retrieve merchant items will return all of an individual merchant's items" do 
      results = @merchants.retreive_merchant_items("1")
      expect(results).to be_a(Array)

      results.each do |item|
        expect(item).to be_an_instance_of(Item)
        expect(item.id.to_i).to be_a(Integer)
        expect(item.name).to be_a(String)
        expect(item.description).to be_a(String)
        expect(item.unit_price).to be_a(Float)

      end

    end

    it "search for a merchant " do 
      results = @merchants.search_merchants("sm")
      expect(results).to be_a(Array)

      results.each do |merchant|
        expect(merchant).to be_an_instance_of(Merchant)
        expect(merchant.id.to_i).to be_a(Integer)
        expect(merchant.name).to be_a(String)
      end

    end
  end
end