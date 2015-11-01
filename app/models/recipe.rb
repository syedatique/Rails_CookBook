class Recipe < ActiveRecord::Base
  belongs_to :catagory
  has_and_belongs_to_many :ingredients
end
