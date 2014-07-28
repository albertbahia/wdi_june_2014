class Bitcoin

  def self.all_rates
    JSON.parse = HTTparty.get("http://api.coindesk.com/v1/bpi/currentprice.json")['bpi'].values
  end
end
