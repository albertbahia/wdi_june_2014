class Artist < ActiveRecord::Base
  has_many :paintings, :dependent => :delete_all
end
