class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show]

  def index
    inventories = Inventory.all
    render json: inventories
  end

  def show
    render json: @inventory
  end

  private
  def set_inventory
    begin
      @inventory = Inventory.find params[:id]
    rescue ActiveRecord::RecordNotFound
      inventory.errors.add(:id, "Inventory does not exist, bad request")
      render_error(user, 404) and return
    end
  end
end