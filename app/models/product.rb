class Product < ApplicationRecord
  has_many :inventories
  has_many :styles, through: :inventories
end