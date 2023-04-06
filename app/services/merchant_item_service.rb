class MerchantItemService

  def initialize(merchant)
    @merchant = merchant
  end

  def get_items
    get_url("merchants/#{@merchant}/items")
  end

  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end
end