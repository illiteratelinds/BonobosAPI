class StyleSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  # has_many :inventories
  # has_many :products, through: :inventories
end
