class Product < ActiveRecord::Base
  scope :home, -> { where(category: 'Home') }
  scope :office, -> { where(category: 'Office') }
  scope :bathroom, -> { where(category: 'Bathroom') }
  scope :kitchen, -> { where(category: 'Kitchen') }

  def self.search(search)
    where("name like ?", "%#{search}%") 
  end
end
