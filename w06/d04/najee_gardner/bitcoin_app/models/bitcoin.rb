module Bitcoin

  def self.exchange_rates
    JSON.parse(HTTParty.get('https://api.coindesk.com/v1/bpi/currentprice.json'))
  end

end
