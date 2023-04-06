class ItemsFacade 
  
  def get_item_info(item_id)
    json = ItemService.new(item_id).get_items_info

    Item.new(json[:data])
  end
end 