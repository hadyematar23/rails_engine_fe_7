require 'rails_helper'

RSpec.describe Item do
  before(:each) do 
    info = {id: 12, attributes: {name: "Hady", unit_price: 12.34, merchant_id: 3}}
    @Item1 = Item.new(info)
  end 

  it "is an item object" do 
    expect(@Item1).to be_an_instance_of(Item)
  end

  it "is has certain attributes" do 
    expect(@Item1.id).to eq(12)
    expect(@Item1.name).to eq("Hady")
    expect(@Item1.unit_price).to eq(12.34)
    expect(@Item1.merchant_id).to eq(3)
  end
end