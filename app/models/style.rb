class Style < ApplicationRecord
  has_many :inventories
  has_many :products, through: :inventories
end