class Coindesk

  def self.search(search_term)
    current = JSON.parse(HTTParty.get(URI.escape
      "http://api.coindesk.com/v1/bpi/currentprice.json"
    ))
    return current["bpi"]
  end

end
