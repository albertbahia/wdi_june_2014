class Bitcoin

  def self.search
    JSON.parse(HTTParty.get('http://api.coindesk.com/v1/bpi/currentprice.json'))['bpi'].values
  end

end
