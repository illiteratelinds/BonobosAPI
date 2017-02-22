class StylesController < ApplicationController
  before_action :set_style, only: [:show]

  def index
    styles = Style.all
    render json: styles
  end

  def show
    render json: @style
  end

  private
  def set_inventory
    begin
    @style = Style.find params[:id]
    rescue ActiveRecord::RecordNotFound
      style.errors.add(:id, "Style does not exist, bad request")
      render_error(user, 404) and return
    end
  end
end