class Merchant
  attr_reader :name, 
              :id
  def initialize(info) 
    @id= info[:id]
    @name = info[:attributes][:name]
  end
end