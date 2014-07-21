class Coindesk

  def self.bpi
    api_url = "http://api.coindesk.com/v1/bpi/currentprice.json"
    api_call = JSON.parse(HTTParty.get(api_url))
  end

end
