class Movie < ActiveRecord::Base
	has_and_belongs_to_many :actors
	has_many :trailers, dependent: :destroy

	validates :poster_url, :title, presence: true

	# validates :year, numericality {only_integer: true, greater_than: Time.now.year + 2}
	# the time.now.year will only be defined when this movie class is called so only if we restart our server every year will it
end
