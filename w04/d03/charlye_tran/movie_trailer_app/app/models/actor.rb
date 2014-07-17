class Actor < ActiveRecord::Base
  belongs_to :movie
  validates :name, presence: true
  validates :name, uniqueness: true
end
