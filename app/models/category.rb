class Category < ActiveRecord::Base
  # has_many :farms
  has_many :farms :through => categorizations
end
