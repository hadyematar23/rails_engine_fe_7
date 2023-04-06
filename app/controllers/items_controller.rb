class ItemsController < ApplicationController
  before_action :initialize_items_facade
  def show
    @item_info = @items_facade.get_item_info(params[:id])
  end

  private 
  
  def initialize_items_facade
    @items_facade ||= ItemsFacade.new
  end
end
