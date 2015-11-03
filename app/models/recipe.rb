class Recipe < ActiveRecord::Base
  # has_and_belongs_to_many :recipes
  belongs_to :catagory
  has_many :quantities
  has_many :ingredients, through: :quantities
end