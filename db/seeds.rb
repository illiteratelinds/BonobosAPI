require 'CSV'

products_text = File.read('db/products.csv')
CSV.parse(products_text, headers: true, header_converters: :symbol) do |row|
  # binding.pry
  Product.create!({:id => row[:product_id].to_i, :product_name => row[:product_name], :product_image => row[:product_image], :product_description => row[:product_description]})
end
inventory_text = File.read('db/inventory.csv')
CSV.parse(inventory_text, headers: true, header_converters: :symbol) do |row|
  style = Style.find_or_create_by(name: row[:style])
  Inventory.create!({:product_id => row[:product_id].to_i, :waist => row[:waist], :length => row[:length], style_id: style.id, :count => row[:count]})
end