require 'active_record'
#require 'pry'

class Cohort < ActiveRecord::Base
  has_many :students
end

#binding.pry
