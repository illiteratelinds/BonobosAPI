class ProductsController < ApplicationController
    before_action :set_product, only: [:show]
  
  def index
    products = Product.all
    render json: products
  end

  def show
    render json: @product
  end

  private
  def set_product
    begin
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      product.errors.add(:id, "Product does not exist, bad request")
      render_error(user, 404) and return
    end
  end
end
