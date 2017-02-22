class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :product_image, :product_description, :created_at, :styles

  def styles
    customized_styles = []
    object.styles.each do |style|
      custom_style = style.attributes
      custom_style[:inventory] = style.inventories.where("product_id":object.id)
      customized_styles << custom_style
    end
    customized_styles
  end
end