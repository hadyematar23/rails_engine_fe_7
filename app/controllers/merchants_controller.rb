class MerchantsController < ApplicationController
  before_action :initialize_merchants_facade
  
  def index 
  end

  def show 
    @items = @merchants.retreive_merchant_items(params[:id])
  end

  private 

  def initialize_merchants_facade
    @merchants ||= MerchantsFacade.new
  end
end
