class Giphy

  #search the API
  def self.search(search_param)
    return HTTParty.get("")
