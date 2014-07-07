class Trailer < ActiveRecord::Base
  belongs_to :movies

  # Trailer must have a title
  validates(:title, { presence: true })

  # Trailer must have an embed url
  validates(:embed_url, { presence: true})
  
end
