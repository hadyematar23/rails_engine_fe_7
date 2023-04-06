require 'rails_helper'

RSpec.describe Merchant do
  before(:each) do 
    info = {id: 12, attributes: {name: "Merchant"}}
    @Merchant1 = Merchant.new(info)
  end 

  it "is an item object" do 
    expect(@Merchant1).to be_an_instance_of(Merchant)
  end

  it "is has certain attributes" do 
    expect(@Merchant1.id).to eq(12)
    expect(@Merchant1.name).to eq("Merchant")
  end
end