require 'rails_helper'

RSpec.describe MerchantsService do
  describe "instance methods" do 
    before(:each) do 
      @merchants = MerchantsService.new 
    end

    it "instnace method of get_merchants will return a JSON hash of merchants" do 
      results = @merchants.get_merchants
      expect(results).to be_a(Hash)
      expect(results[:data]).to be_a(Array)
      results[:data].each do |individual_hash|
        expect(individual_hash).to be_a(Hash)
        expect(individual_hash[:id].to_i).to be_a(Integer)
        expect(individual_hash[:type]).to eq("merchant")
        expect(individual_hash[:attributes]).to be_a(Hash)
        expect(individual_hash[:attributes][:name]).to be_a(String)
      end
    end

    it "instance methods of search merchants with a search term will return a JSON hash of merchants" do 
      results = @merchants.search_merchants("sm")
      expect(results).to be_a(Hash)
      expect(results[:data]).to be_a(Array)
      results[:data].each do |individual_hash|
        expect(individual_hash).to be_a(Hash)
        expect(individual_hash[:id].to_i).to be_a(Integer)
        expect(individual_hash[:type]).to eq("merchant")
        expect(individual_hash[:attributes]).to be_a(Hash)
        expect(individual_hash[:attributes][:name]).to be_a(String)
      end
    end
  end 
end 