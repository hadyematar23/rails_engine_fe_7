class MerchantsService

  def get_merchants
    get_url("merchants")
  end

  def search_merchants(search_term)
    get_url("/api/v1/merchants/find_all?name=#{search_term}")
  end

  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end
end