class Manager < ActiveRecord::Base
  attr_accessible :name
  
  has_many :castings
end
