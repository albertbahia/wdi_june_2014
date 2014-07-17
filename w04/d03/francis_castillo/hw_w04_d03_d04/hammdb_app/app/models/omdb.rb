# require 'httparty'
# require 'active_record'
# require 'pry'
class OMDB < ActiveRecord::Base

  #defined api search
  def self.step_i(search_term)
  search_url = "http://www.omdbapi.com/?#{search_term}"
  end
  #called HTTParty
  def self.step_ii(srch_url)
    HTTParty.get(URI.escape(srch_url))
  end
  #parsed JSON
  def self.step_iii(new_parse)
    JSON.parse(new_parse)
  end
  #part one map imdbID, part two return result of second call of self.search below
  def self.step_iv(path, result)
    if path == 1
      result["Search"].map do |res|
      res["imdbID"]
      end
    elsif path == 2
      result
    end
  end
  #call the steps above nested
  def self.step_v(s_term,s_para,num_path)
    self.step_iv(num_path, self.step_iii(self.step_ii(self.step_i(s_para + "=" + s_term))))
  end
  #final step call self.step_v twice to map single imdbID results
  def self.search(fin_term)
    self.step_v(fin_term, "s" ,1).map do |fin_step|
    self.step_v(fin_step, "i", 2)
    end
  end
end

# binding.pry
