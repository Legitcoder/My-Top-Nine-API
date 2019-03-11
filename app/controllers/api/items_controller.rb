class Api::ItemsController < ApplicationController

  def index
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @items = @category.items
    end
  end
end
