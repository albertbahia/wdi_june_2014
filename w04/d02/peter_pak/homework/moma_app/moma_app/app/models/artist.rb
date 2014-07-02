class Artist < ActiveRecord::Base
  has_many :paintings, dependent: :destroy
end
