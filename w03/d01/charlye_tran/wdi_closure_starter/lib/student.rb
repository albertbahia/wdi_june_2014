require 'active_record'
#require 'pry'

class Student < ActiveRecord::Base
  belongs_to :cohort
end

#binding.pry
