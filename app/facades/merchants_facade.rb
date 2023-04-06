class MerchantsFacade 

  def retreive_merchants
    json = MerchantsService.new.get_merchants
    
    json[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def retreive_merchant_items(merchant_id)
    json_items = MerchantItemService.new(merchant_id).get_items

    json_items[:data].map do |item_info|
      Item.new(item_info)
    end
  end

  def search_merchants(search_term)
    json = MerchantsService.new.search_merchants(search_term)
    json[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

end