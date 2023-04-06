class MerchantsFacade 

  def self.retreive_merchants
    @_merchants ||= begin
      json = MerchantsService.new.get_merchants
      json[:data].map do |merchant_info|
        Merchant.new(merchant_info)
      end
    end
  end

  def self.retreive_merchant_items(merchant_id)
    json_items = MerchantItemService.new(merchant_id).get_items
    json_items[:data].map do |item_info|
      Item.new(item_info)
    end
  end

end