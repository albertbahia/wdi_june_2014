require 'pry'
require 'httparty'

module CoinDesk

  def self.usd_rates
    api_url = "http://api.coindesk.com/v1/bpi/currentprice.json"
    json_results = HTTParty.get(api_url)
    results = JSON.parse(json_results)
    usd_exchange = results["bpi"]["USD"]["rate"]
  end

  def self.gbp_rates
    api_url = "http://api.coindesk.com/v1/bpi/currentprice.json"
    json_results = HTTParty.get(api_url)
    results = JSON.parse(json_results)
    usd_exchange = results["bpi"]["GBP"]["rate"]
  end

  def self.eur_rates
    api_url = "http://api.coindesk.com/v1/bpi/currentprice.json"
    json_results = HTTParty.get(api_url)
    results = JSON.parse(json_results)
    usd_exchange = results["bpi"]["EUR"]["rate"]
  end

end
