class Bitcoin

  def self.exchange
    JSON.parse(HTTParty.get("http://api.coindesk.com/v1/bpi/currentprice.json"))
  end
end
