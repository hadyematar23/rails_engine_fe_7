class ItemService

  def initialize(item)
    @item = item
  end

  def get_items_info
    get_url("items/#{@item}")
  end

  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end


end