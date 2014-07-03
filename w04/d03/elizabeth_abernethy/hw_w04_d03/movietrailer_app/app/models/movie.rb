class Movie < ActiveRecord::Base
  has_many :actors, dependent: :destroy

  # Movie should have a title
  validates(:title, { presence: true })

  # Movie should have a plot
  validates(:plot, { presence: true })

  # Movie year should be a number / integer / greater than 0
  validates(:year, { numericality: { only_integer: true, greater_than: 1800 } })

  # Movie title should not exceed 50 characters
  validates(:title, {length: { maximum: 50 } })
end
