class MerchantsController < ApplicationController
  def index 
    @merchants = MerchantsFacade.retreive_merchants
  end

  def show 
    
    @individual_merchant = MerchantsFacade.retreive_merchants.find do |merchant|
      merchant.id == params[:id]
    end 
    @merchant = MerchantsFacade.retreive_merchant_items(params[:id])
  end
end
