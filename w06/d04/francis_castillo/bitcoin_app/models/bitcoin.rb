class Bitcoin

  def self.all_rates
    JSON.parse(HTTParty.get("https://api.coindesk.com/v1/bpi/currentprice.json"))["bpi"].values
  end

end
