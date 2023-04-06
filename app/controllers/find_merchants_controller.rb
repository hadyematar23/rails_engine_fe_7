class FindMerchantsController < ApplicationController
  before_action :initialize_merchants_facade
  
  def index
    @results = @merchants.search_merchants(params[:search_term])
  end

  private 

  def initialize_merchants_facade
    @merchants ||= MerchantsFacade.new
  end

end
