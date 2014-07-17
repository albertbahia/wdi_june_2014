class Group < ActiveRecord::Base
	has_many :teams

	validates :name, presence: true
	validates :name, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end