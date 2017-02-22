class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product_id, :waist, :length, :style_id, :count, :created_at
end

